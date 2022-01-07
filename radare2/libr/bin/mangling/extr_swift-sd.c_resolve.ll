; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_swift-sd.c_resolve.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_swift-sd.c_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Type = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Type*, i8*, i8**)* @resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @resolve(%struct.Type* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.Type* %0, %struct.Type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.Type*, %struct.Type** %5, align 8
  %10 = icmp ne %struct.Type* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %11, %3
  store i8* null, i8** %4, align 8
  br label %59

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %55, %19
  %21 = load %struct.Type*, %struct.Type** %5, align 8
  %22 = getelementptr inbounds %struct.Type, %struct.Type* %21, i64 0
  %23 = getelementptr inbounds %struct.Type, %struct.Type* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %20
  %27 = load %struct.Type*, %struct.Type** %5, align 8
  %28 = getelementptr inbounds %struct.Type, %struct.Type* %27, i64 0
  %29 = getelementptr inbounds %struct.Type, %struct.Type* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @strlen(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.Type*, %struct.Type** %5, align 8
  %34 = getelementptr inbounds %struct.Type, %struct.Type* %33, i64 0
  %35 = getelementptr inbounds %struct.Type, %struct.Type* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @strncmp(i8* %32, i64 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %26
  %41 = load i8**, i8*** %7, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.Type*, %struct.Type** %5, align 8
  %45 = getelementptr inbounds %struct.Type, %struct.Type* %44, i64 0
  %46 = getelementptr inbounds %struct.Type, %struct.Type* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %4, align 8
  br label %59

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.Type*, %struct.Type** %5, align 8
  %57 = getelementptr inbounds %struct.Type, %struct.Type* %56, i32 1
  store %struct.Type* %57, %struct.Type** %5, align 8
  br label %20

58:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %59

59:                                               ; preds = %58, %49, %18
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @strncmp(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
