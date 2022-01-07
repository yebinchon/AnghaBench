; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniGetSettingByNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniGetSettingByNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }

@INI_SECTION_ITEM = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @IniGetSettingByNumber(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INI_SECTION_ITEM, align 4
  %16 = load i32, i32* @ListEntry, align 4
  %17 = call %struct.TYPE_7__* @CONTAINING_RECORD(i32 %14, i32 %15, i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  br label %18

18:                                               ; preds = %29, %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = icmp ne %struct.TYPE_6__* %20, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %3, align 8
  br label %40

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @INI_SECTION_ITEM, align 4
  %37 = load i32, i32* @ListEntry, align 4
  %38 = call %struct.TYPE_7__* @CONTAINING_RECORD(i32 %35, i32 %36, i32 %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %7, align 8
  br label %18

39:                                               ; preds = %18
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %41
}

declare dso_local %struct.TYPE_7__* @CONTAINING_RECORD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
