; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey-name-map.c_obs_hotkey_name_map_lookup.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey-name-map.c_obs_hotkey_name_map_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32*)* @obs_hotkey_name_map_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_hotkey_name_map_lookup(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %118

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %116, %46, %42, %19
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %117

31:                                               ; preds = %24
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %36
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %11, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @compare_prefix(%struct.TYPE_10__* %38, i8* %39, i64 %40)
  switch i32 %41, label %116 [
    i32 129, label %42
    i32 131, label %45
    i32 128, label %46
    i32 130, label %60
  ]

42:                                               ; preds = %31
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %24

45:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %118

46:                                               ; preds = %31
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %6, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %24

60:                                               ; preds = %31
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %9, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %107, label %68

68:                                               ; preds = %60
  store i64 0, i64* %12, align 8
  br label %69

69:                                               ; preds = %103, %68
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %103

87:                                               ; preds = %76
  %88 = load i32*, i32** %7, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %90, %87
  store i32 1, i32* %4, align 4
  br label %118

103:                                              ; preds = %86
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %12, align 8
  br label %69

106:                                              ; preds = %69
  store i32 0, i32* %4, align 4
  br label %118

107:                                              ; preds = %60
  %108 = load i32*, i32** %7, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %107
  store i32 1, i32* %4, align 4
  br label %118

116:                                              ; preds = %31
  br label %24

117:                                              ; preds = %24
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %115, %106, %102, %45, %18
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @compare_prefix(%struct.TYPE_10__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
