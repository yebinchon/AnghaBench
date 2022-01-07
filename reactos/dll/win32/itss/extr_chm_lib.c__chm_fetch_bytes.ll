; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_fetch_bytes.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_fetch_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@CHM_NULL_FD = common dso_local global i64 0, align 8
@FILE_CURRENT = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.chmFile*, i32*, i64, i64)* @_chm_fetch_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_chm_fetch_bytes(%struct.chmFile* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i64, align 8
  store %struct.chmFile* %0, %struct.chmFile** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %15 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHM_NULL_FD, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %5, align 8
  br label %66

21:                                               ; preds = %4
  %22 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %23 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @CHM_ACQUIRE_LOCK(i32 %24)
  store i64 0, i64* %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %28 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @FILE_CURRENT, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @SetFilePointerEx(i64 %29, i64 %32, %struct.TYPE_4__* %11, i32 %30)
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %37 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @FILE_BEGIN, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @SetFilePointerEx(i64 %38, i64 %41, %struct.TYPE_4__* null, i32 %39)
  %43 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %44 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @ReadFile(i64 %45, i32* %46, i64 %47, i64* %13, i32* null)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %21
  %51 = load i64, i64* %13, align 8
  store i64 %51, i64* %10, align 8
  br label %53

52:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %53

53:                                               ; preds = %52, %50
  %54 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %55 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @FILE_BEGIN, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @SetFilePointerEx(i64 %56, i64 %59, %struct.TYPE_4__* null, i32 %57)
  %61 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %62 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @CHM_RELEASE_LOCK(i32 %63)
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %53, %19
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i32 @CHM_ACQUIRE_LOCK(i32) #1

declare dso_local i32 @SetFilePointerEx(i64, i64, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @ReadFile(i64, i32*, i64, i64*, i32*) #1

declare dso_local i32 @CHM_RELEASE_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
