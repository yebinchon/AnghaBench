; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_get_netdev.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_get_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev = type { i64, i8*, %struct.netdev*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@netdev_last_used = common dso_local global %struct.netdev* null, align 8
@netdev_root = common dso_local global %struct.netdev* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"net_compressed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"net_drops\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"net_errors\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"net_events\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"net_fifo\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"net_packets\00", align 1
@NETDATA_CHART_PRIO_FIRST_NET_IFACE = common dso_local global i32 0, align 4
@netdev_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netdev* (i8*)* @get_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netdev* @get_netdev(i8* %0) #0 {
  %2 = alloca %struct.netdev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netdev*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @simple_hash(i8* %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.netdev*, %struct.netdev** @netdev_last_used, align 8
  store %struct.netdev* %9, %struct.netdev** %4, align 8
  br label %10

10:                                               ; preds = %38, %1
  %11 = load %struct.netdev*, %struct.netdev** %4, align 8
  %12 = icmp ne %struct.netdev* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.netdev*, %struct.netdev** %4, align 8
  %16 = getelementptr inbounds %struct.netdev, %struct.netdev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.netdev*, %struct.netdev** %4, align 8
  %22 = getelementptr inbounds %struct.netdev, %struct.netdev* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* %20, i8* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %19, %13
  %28 = phi i1 [ false, %13 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.netdev*, %struct.netdev** %4, align 8
  %34 = getelementptr inbounds %struct.netdev, %struct.netdev* %33, i32 0, i32 2
  %35 = load %struct.netdev*, %struct.netdev** %34, align 8
  store %struct.netdev* %35, %struct.netdev** @netdev_last_used, align 8
  %36 = load %struct.netdev*, %struct.netdev** %4, align 8
  store %struct.netdev* %36, %struct.netdev** %2, align 8
  br label %193

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.netdev*, %struct.netdev** %4, align 8
  %40 = getelementptr inbounds %struct.netdev, %struct.netdev* %39, i32 0, i32 2
  %41 = load %struct.netdev*, %struct.netdev** %40, align 8
  store %struct.netdev* %41, %struct.netdev** %4, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.netdev*, %struct.netdev** @netdev_root, align 8
  store %struct.netdev* %43, %struct.netdev** %4, align 8
  br label %44

44:                                               ; preds = %73, %42
  %45 = load %struct.netdev*, %struct.netdev** %4, align 8
  %46 = load %struct.netdev*, %struct.netdev** @netdev_last_used, align 8
  %47 = icmp ne %struct.netdev* %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.netdev*, %struct.netdev** %4, align 8
  %51 = getelementptr inbounds %struct.netdev, %struct.netdev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = load %struct.netdev*, %struct.netdev** %4, align 8
  %57 = getelementptr inbounds %struct.netdev, %struct.netdev* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %55, i8* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %54, %48
  %63 = phi i1 [ false, %48 ], [ %61, %54 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.netdev*, %struct.netdev** %4, align 8
  %69 = getelementptr inbounds %struct.netdev, %struct.netdev* %68, i32 0, i32 2
  %70 = load %struct.netdev*, %struct.netdev** %69, align 8
  store %struct.netdev* %70, %struct.netdev** @netdev_last_used, align 8
  %71 = load %struct.netdev*, %struct.netdev** %4, align 8
  store %struct.netdev* %71, %struct.netdev** %2, align 8
  br label %193

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.netdev*, %struct.netdev** %4, align 8
  %75 = getelementptr inbounds %struct.netdev, %struct.netdev* %74, i32 0, i32 2
  %76 = load %struct.netdev*, %struct.netdev** %75, align 8
  store %struct.netdev* %76, %struct.netdev** %4, align 8
  br label %44

77:                                               ; preds = %44
  %78 = call %struct.netdev* @callocz(i32 1, i32 160)
  store %struct.netdev* %78, %struct.netdev** %4, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @strdupz(i8* %79)
  %81 = load %struct.netdev*, %struct.netdev** %4, align 8
  %82 = getelementptr inbounds %struct.netdev, %struct.netdev* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.netdev*, %struct.netdev** %4, align 8
  %84 = getelementptr inbounds %struct.netdev, %struct.netdev* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @simple_hash(i8* %85)
  %87 = load %struct.netdev*, %struct.netdev** %4, align 8
  %88 = getelementptr inbounds %struct.netdev, %struct.netdev* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.netdev*, %struct.netdev** %4, align 8
  %90 = getelementptr inbounds %struct.netdev, %struct.netdev* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = load %struct.netdev*, %struct.netdev** %4, align 8
  %94 = getelementptr inbounds %struct.netdev, %struct.netdev* %93, i32 0, i32 19
  store i32 %92, i32* %94, align 8
  %95 = call i8* @strdupz(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.netdev*, %struct.netdev** %4, align 8
  %97 = getelementptr inbounds %struct.netdev, %struct.netdev* %96, i32 0, i32 18
  store i8* %95, i8** %97, align 8
  %98 = call i8* @strdupz(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.netdev*, %struct.netdev** %4, align 8
  %100 = getelementptr inbounds %struct.netdev, %struct.netdev* %99, i32 0, i32 17
  store i8* %98, i8** %100, align 8
  %101 = call i8* @strdupz(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.netdev*, %struct.netdev** %4, align 8
  %103 = getelementptr inbounds %struct.netdev, %struct.netdev* %102, i32 0, i32 16
  store i8* %101, i8** %103, align 8
  %104 = call i8* @strdupz(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.netdev*, %struct.netdev** %4, align 8
  %106 = getelementptr inbounds %struct.netdev, %struct.netdev* %105, i32 0, i32 15
  store i8* %104, i8** %106, align 8
  %107 = call i8* @strdupz(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.netdev*, %struct.netdev** %4, align 8
  %109 = getelementptr inbounds %struct.netdev, %struct.netdev* %108, i32 0, i32 14
  store i8* %107, i8** %109, align 8
  %110 = call i8* @strdupz(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %111 = load %struct.netdev*, %struct.netdev** %4, align 8
  %112 = getelementptr inbounds %struct.netdev, %struct.netdev* %111, i32 0, i32 13
  store i8* %110, i8** %112, align 8
  %113 = call i8* @strdupz(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.netdev*, %struct.netdev** %4, align 8
  %115 = getelementptr inbounds %struct.netdev, %struct.netdev* %114, i32 0, i32 12
  store i8* %113, i8** %115, align 8
  %116 = load %struct.netdev*, %struct.netdev** %4, align 8
  %117 = getelementptr inbounds %struct.netdev, %struct.netdev* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @strdupz(i8* %118)
  %120 = load %struct.netdev*, %struct.netdev** %4, align 8
  %121 = getelementptr inbounds %struct.netdev, %struct.netdev* %120, i32 0, i32 11
  store i8* %119, i8** %121, align 8
  %122 = load %struct.netdev*, %struct.netdev** %4, align 8
  %123 = getelementptr inbounds %struct.netdev, %struct.netdev* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @strdupz(i8* %124)
  %126 = load %struct.netdev*, %struct.netdev** %4, align 8
  %127 = getelementptr inbounds %struct.netdev, %struct.netdev* %126, i32 0, i32 10
  store i8* %125, i8** %127, align 8
  %128 = load %struct.netdev*, %struct.netdev** %4, align 8
  %129 = getelementptr inbounds %struct.netdev, %struct.netdev* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i8* @strdupz(i8* %130)
  %132 = load %struct.netdev*, %struct.netdev** %4, align 8
  %133 = getelementptr inbounds %struct.netdev, %struct.netdev* %132, i32 0, i32 9
  store i8* %131, i8** %133, align 8
  %134 = load %struct.netdev*, %struct.netdev** %4, align 8
  %135 = getelementptr inbounds %struct.netdev, %struct.netdev* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @strdupz(i8* %136)
  %138 = load %struct.netdev*, %struct.netdev** %4, align 8
  %139 = getelementptr inbounds %struct.netdev, %struct.netdev* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  %140 = load %struct.netdev*, %struct.netdev** %4, align 8
  %141 = getelementptr inbounds %struct.netdev, %struct.netdev* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @strdupz(i8* %142)
  %144 = load %struct.netdev*, %struct.netdev** %4, align 8
  %145 = getelementptr inbounds %struct.netdev, %struct.netdev* %144, i32 0, i32 7
  store i8* %143, i8** %145, align 8
  %146 = load %struct.netdev*, %struct.netdev** %4, align 8
  %147 = getelementptr inbounds %struct.netdev, %struct.netdev* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @strdupz(i8* %148)
  %150 = load %struct.netdev*, %struct.netdev** %4, align 8
  %151 = getelementptr inbounds %struct.netdev, %struct.netdev* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  %152 = load %struct.netdev*, %struct.netdev** %4, align 8
  %153 = getelementptr inbounds %struct.netdev, %struct.netdev* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @strdupz(i8* %154)
  %156 = load %struct.netdev*, %struct.netdev** %4, align 8
  %157 = getelementptr inbounds %struct.netdev, %struct.netdev* %156, i32 0, i32 5
  store i8* %155, i8** %157, align 8
  %158 = load %struct.netdev*, %struct.netdev** %4, align 8
  %159 = getelementptr inbounds %struct.netdev, %struct.netdev* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @strdupz(i8* %160)
  %162 = load %struct.netdev*, %struct.netdev** %4, align 8
  %163 = getelementptr inbounds %struct.netdev, %struct.netdev* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* @NETDATA_CHART_PRIO_FIRST_NET_IFACE, align 4
  %165 = load %struct.netdev*, %struct.netdev** %4, align 8
  %166 = getelementptr inbounds %struct.netdev, %struct.netdev* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load %struct.netdev*, %struct.netdev** %4, align 8
  %168 = call i32 @netdev_rename_lock(%struct.netdev* %167)
  %169 = load i32, i32* @netdev_added, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @netdev_added, align 4
  %171 = load %struct.netdev*, %struct.netdev** @netdev_root, align 8
  %172 = icmp ne %struct.netdev* %171, null
  br i1 %172, label %173, label %189

173:                                              ; preds = %77
  %174 = load %struct.netdev*, %struct.netdev** @netdev_root, align 8
  store %struct.netdev* %174, %struct.netdev** %6, align 8
  br label %175

175:                                              ; preds = %181, %173
  %176 = load %struct.netdev*, %struct.netdev** %6, align 8
  %177 = getelementptr inbounds %struct.netdev, %struct.netdev* %176, i32 0, i32 2
  %178 = load %struct.netdev*, %struct.netdev** %177, align 8
  %179 = icmp ne %struct.netdev* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.netdev*, %struct.netdev** %6, align 8
  %183 = getelementptr inbounds %struct.netdev, %struct.netdev* %182, i32 0, i32 2
  %184 = load %struct.netdev*, %struct.netdev** %183, align 8
  store %struct.netdev* %184, %struct.netdev** %6, align 8
  br label %175

185:                                              ; preds = %175
  %186 = load %struct.netdev*, %struct.netdev** %4, align 8
  %187 = load %struct.netdev*, %struct.netdev** %6, align 8
  %188 = getelementptr inbounds %struct.netdev, %struct.netdev* %187, i32 0, i32 2
  store %struct.netdev* %186, %struct.netdev** %188, align 8
  br label %191

189:                                              ; preds = %77
  %190 = load %struct.netdev*, %struct.netdev** %4, align 8
  store %struct.netdev* %190, %struct.netdev** @netdev_root, align 8
  br label %191

191:                                              ; preds = %189, %185
  %192 = load %struct.netdev*, %struct.netdev** %4, align 8
  store %struct.netdev* %192, %struct.netdev** %2, align 8
  br label %193

193:                                              ; preds = %191, %67, %32
  %194 = load %struct.netdev*, %struct.netdev** %2, align 8
  ret %struct.netdev* %194
}

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.netdev* @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @netdev_rename_lock(%struct.netdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
