; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_pipe-windows.c_create_process.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_pipe-windows.c_create_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i32 }

@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@STARTF_FORCEOFFFEEDBACK = common dso_local global i32 0, align 4
@CREATE_NO_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8**)* @create_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_process(i8* %0, i8* %1, i8* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %15 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  store i32* null, i32** %12, align 8
  %16 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 40, i1 false)
  store i32 0, i32* %14, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 40, i32* %17, align 8
  %18 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %19 = load i32, i32* @STARTF_FORCEOFFFEEDBACK, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @os_utf8_to_wcs_ptr(i8* %28, i32 0, i32** %12)
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %5
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* @CREATE_NO_WINDOW, align 4
  %35 = call i32 @CreateProcessW(i32* null, i32* %33, i32* null, i32* null, i32 1, i32 %34, i32* null, i32* null, %struct.TYPE_5__* %13, %struct.TYPE_6__* %11)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %10, align 8
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CloseHandle(i32 %47)
  br label %49

49:                                               ; preds = %42, %32
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @bfree(i32* %50)
  br label %52

52:                                               ; preds = %49, %5
  %53 = load i32, i32* %14, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @os_utf8_to_wcs_ptr(i8*, i32, i32**) #2

declare dso_local i32 @CreateProcessW(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @bfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
