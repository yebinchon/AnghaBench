; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_add_folder.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_add_folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.folder = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32, i32, i32, %struct.folder* (i32)* }
%struct.TYPE_7__ = type { i64 }

@FCIERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.folder* (%struct.TYPE_8__*)* @add_folder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.folder* @add_folder(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.folder*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.folder*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  %7 = load %struct.folder* (i32)*, %struct.folder* (i32)** %6, align 8
  %8 = call %struct.folder* %7(i32 32)
  store %struct.folder* %8, %struct.folder** %4, align 8
  %9 = load %struct.folder*, %struct.folder** %4, align 8
  %10 = icmp ne %struct.folder* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load i32, i32* @FCIERR_ALLOC_FAIL, align 4
  %14 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %15 = call i32 @set_error(%struct.TYPE_8__* %12, i32 %13, i32 %14)
  store %struct.folder* null, %struct.folder** %2, align 8
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.folder*, %struct.folder** %4, align 8
  %18 = getelementptr inbounds %struct.folder, %struct.folder* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.folder*, %struct.folder** %4, align 8
  %24 = getelementptr inbounds %struct.folder, %struct.folder* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.folder*, %struct.folder** %4, align 8
  %26 = getelementptr inbounds %struct.folder, %struct.folder* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.folder*, %struct.folder** %4, align 8
  %31 = getelementptr inbounds %struct.folder, %struct.folder* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.folder*, %struct.folder** %4, align 8
  %33 = getelementptr inbounds %struct.folder, %struct.folder* %32, i32 0, i32 2
  %34 = call i32 @list_init(i32* %33)
  %35 = load %struct.folder*, %struct.folder** %4, align 8
  %36 = getelementptr inbounds %struct.folder, %struct.folder* %35, i32 0, i32 1
  %37 = call i32 @list_init(i32* %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.folder*, %struct.folder** %4, align 8
  %41 = getelementptr inbounds %struct.folder, %struct.folder* %40, i32 0, i32 0
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 4, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.folder*, %struct.folder** %4, align 8
  store %struct.folder* %58, %struct.folder** %2, align 8
  br label %59

59:                                               ; preds = %16, %11
  %60 = load %struct.folder*, %struct.folder** %2, align 8
  ret %struct.folder* %60
}

declare dso_local i32 @set_error(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
