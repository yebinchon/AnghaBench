; ModuleID = '/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_class_add.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_class_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_class = type { i8, i8*, i8*, i8*, i8*, i8*, i8*, %struct.tc_class*, %struct.tc_class* }
%struct.tc_device = type { i8*, %struct.tc_class*, %struct.tc_class* }

@D_TC_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"TC: Creating in device '%s', class id '%s', parentid '%s', leafid '%s'\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"plugin_tc: INTERNAL ERROR: attempt index class '%s' on device '%s': already exists\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_class* (%struct.tc_device*, i8*, i8, i8*, i8*)* @tc_class_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_class* @tc_class_add(%struct.tc_device* %0, i8* %1, i8 signext %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.tc_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tc_class*, align 8
  store %struct.tc_device* %0, %struct.tc_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.tc_class* @tc_class_index_find(%struct.tc_device* %12, i8* %13, i32 0)
  store %struct.tc_class* %14, %struct.tc_class** %11, align 8
  %15 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %16 = icmp ne %struct.tc_class* %15, null
  br i1 %16, label %141, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @D_TC_LOOP, align 4
  %19 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %20 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i8*, i8** %9, align 8
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = call i32 @debug(i32 %18, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i8* %29, i8* %36)
  %38 = call %struct.tc_class* @callocz(i32 1, i32 72)
  store %struct.tc_class* %38, %struct.tc_class** %11, align 8
  %39 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %40 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %39, i32 0, i32 2
  %41 = load %struct.tc_class*, %struct.tc_class** %40, align 8
  %42 = icmp ne %struct.tc_class* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %49 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %50 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %49, i32 0, i32 2
  store %struct.tc_class* %48, %struct.tc_class** %50, align 8
  br label %69

51:                                               ; preds = %35
  %52 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %53 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %52, i32 0, i32 1
  %54 = load %struct.tc_class*, %struct.tc_class** %53, align 8
  %55 = call i64 @likely(%struct.tc_class* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %59 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %60 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %59, i32 0, i32 1
  %61 = load %struct.tc_class*, %struct.tc_class** %60, align 8
  %62 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %61, i32 0, i32 8
  store %struct.tc_class* %58, %struct.tc_class** %62, align 8
  %63 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %64 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %63, i32 0, i32 1
  %65 = load %struct.tc_class*, %struct.tc_class** %64, align 8
  %66 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %67 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %66, i32 0, i32 7
  store %struct.tc_class* %65, %struct.tc_class** %67, align 8
  br label %68

68:                                               ; preds = %57, %51
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %71 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %72 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %71, i32 0, i32 1
  store %struct.tc_class* %70, %struct.tc_class** %72, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i8* @strdupz(i8* %73)
  %75 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %76 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %78 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @simple_hash(i8* %79)
  %81 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %82 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i8, i8* %8, align 1
  %84 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %85 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %84, i32 0, i32 0
  store i8 %83, i8* %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %69
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i8*, i8** %9, align 8
  %95 = call i8* @strdupz(i8* %94)
  %96 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %97 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %99 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @simple_hash(i8* %100)
  %102 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %103 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %93, %88, %69
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %123

107:                                              ; preds = %104
  %108 = load i8*, i8** %10, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load i8*, i8** %10, align 8
  %114 = call i8* @strdupz(i8* %113)
  %115 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %116 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %118 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* @simple_hash(i8* %119)
  %121 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %122 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %112, %107, %104
  %124 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %125 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %126 = call %struct.tc_class* @tc_class_index_add(%struct.tc_device* %124, %struct.tc_class* %125)
  %127 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %128 = icmp ne %struct.tc_class* %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %123
  %133 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  %134 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.tc_device*, %struct.tc_device** %6, align 8
  %137 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i8* %135, i8* %138)
  br label %140

140:                                              ; preds = %132, %123
  br label %141

141:                                              ; preds = %140, %5
  %142 = load %struct.tc_class*, %struct.tc_class** %11, align 8
  ret %struct.tc_class* %142
}

declare dso_local %struct.tc_class* @tc_class_index_find(%struct.tc_device*, i8*, i32) #1

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.tc_class* @callocz(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(%struct.tc_class*) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i8* @simple_hash(i8*) #1

declare dso_local %struct.tc_class* @tc_class_index_add(%struct.tc_device*, %struct.tc_class*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
