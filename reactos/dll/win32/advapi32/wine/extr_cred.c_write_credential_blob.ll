; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_write_credential_blob.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_write_credential_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustring = type { i8*, i32, i32 }

@KEY_SIZE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@wszPasswordValue = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*, i32)* @write_credential_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_credential_blob(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ustring, align 8
  %16 = alloca %struct.ustring, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @KEY_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @KEY_SIZE, align 4
  %21 = getelementptr inbounds %struct.ustring, %struct.ustring* %16, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ustring, %struct.ustring* %16, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = getelementptr inbounds %struct.ustring, %struct.ustring* %16, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i8* @heap_alloc(i32 %26)
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %31, i32* %7, align 4
  br label %52

32:                                               ; preds = %6
  %33 = load i8*, i8** %14, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @memcpy(i8* %33, i32* %34, i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = getelementptr inbounds %struct.ustring, %struct.ustring* %15, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.ustring, %struct.ustring* %15, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds %struct.ustring, %struct.ustring* %15, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = call i32 @SystemFunction032(%struct.ustring* %15, %struct.ustring* %16)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @wszPasswordValue, align 4
  %45 = load i32, i32* @REG_BINARY, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @RegSetValueExW(i32 %43, i32 %44, i32 0, i32 %45, i8* %46, i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @heap_free(i8* %49)
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %32, %30
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @SystemFunction032(%struct.ustring*, %struct.ustring*) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
