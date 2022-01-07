; ModuleID = '/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_set_device_name.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_set_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_device = type { i32, i32*, i32* }

@D_TC_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TC: Setting device '%s' name to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_device*, i8*)* @tc_device_set_device_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_device_set_device_name(%struct.tc_device* %0, i8* %1) #0 {
  %3 = alloca %struct.tc_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.tc_device* %0, %struct.tc_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ true, %2 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %71

18:                                               ; preds = %12
  %19 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %20 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %25 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i32* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %71

31:                                               ; preds = %23
  %32 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %33 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @freez(i32* %34)
  %36 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %37 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %31, %18
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %48 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strcmp(i32* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %46, %41, %38
  %54 = phi i1 [ false, %41 ], [ false, %38 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* @D_TC_LOOP, align 4
  %60 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %61 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @debug(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %62, i8* %63)
  %65 = load i8*, i8** %4, align 8
  %66 = call i32* @strdupz(i8* %65)
  %67 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %68 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %70 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %17, %30, %58, %53
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @freez(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32*, i8*) #1

declare dso_local i32* @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
