; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_print_attr_val.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_print_attr_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, %struct.switch_port_link*, %struct.TYPE_3__* }
%struct.switch_port_link = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d%s \00", align 1
@SWLIB_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"port:%d link:up speed:%s %s-duplex %s%s%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"txflow \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"rxflow \00", align 1
@SWLIB_LINK_FLAG_EEE_100BASET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"eee100 \00", align 1
@SWLIB_LINK_FLAG_EEE_1000BASET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"eee1000 \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"port:%d link:down\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"?unknown-type?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_attr*, %struct.switch_val*)* @print_attr_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_attr_val(%struct.switch_attr* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_attr*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca %struct.switch_port_link*, align 8
  %6 = alloca i32, align 4
  store %struct.switch_attr* %0, %struct.switch_attr** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %7 = load %struct.switch_attr*, %struct.switch_attr** %3, align 8
  %8 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %122 [
    i32 131, label %10
    i32 128, label %16
    i32 129, label %22
    i32 130, label %58
  ]

10:                                               ; preds = %2
  %11 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %12 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %124

16:                                               ; preds = %2
  %17 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %18 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %124

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %26 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %31 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %40 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SWLIB_PORT_FLAG_TAGGED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8* %52)
  br label %54

54:                                               ; preds = %29
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %23

57:                                               ; preds = %23
  br label %124

58:                                               ; preds = %2
  %59 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %60 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.switch_port_link*, %struct.switch_port_link** %61, align 8
  store %struct.switch_port_link* %62, %struct.switch_port_link** %5, align 8
  %63 = load %struct.switch_port_link*, %struct.switch_port_link** %5, align 8
  %64 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %116

67:                                               ; preds = %58
  %68 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %69 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.switch_port_link*, %struct.switch_port_link** %5, align 8
  %72 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @speed_str(i32 %73)
  %75 = load %struct.switch_port_link*, %struct.switch_port_link** %5, align 8
  %76 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %81 = load %struct.switch_port_link*, %struct.switch_port_link** %5, align 8
  %82 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %87 = load %struct.switch_port_link*, %struct.switch_port_link** %5, align 8
  %88 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %93 = load %struct.switch_port_link*, %struct.switch_port_link** %5, align 8
  %94 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SWLIB_LINK_FLAG_EEE_100BASET, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %101 = load %struct.switch_port_link*, %struct.switch_port_link** %5, align 8
  %102 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SWLIB_LINK_FLAG_EEE_1000BASET, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %109 = load %struct.switch_port_link*, %struct.switch_port_link** %5, align 8
  %110 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %70, i8* %74, i8* %80, i8* %86, i8* %92, i8* %100, i8* %108, i8* %114)
  br label %121

116:                                              ; preds = %58
  %117 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %118 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %116, %67
  br label %124

122:                                              ; preds = %2
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %121, %57, %16, %10
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @speed_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
