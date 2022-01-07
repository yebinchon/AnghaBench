; ModuleID = '/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_should_send_chart_matching.c'
source_filename = "/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_should_send_chart_matching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@RRDSET_FLAG_ENABLED = common dso_local global i32 0, align 4
@RRDSET_FLAG_UPSTREAM_SEND = common dso_local global i32 0, align 4
@RRDSET_FLAG_UPSTREAM_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @should_send_chart_matching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_send_chart_matching(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = load i32, i32* @RRDSET_FLAG_ENABLED, align 4
  %6 = call i32 @rrdset_flag_check(%struct.TYPE_7__* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = load i32, i32* @RRDSET_FLAG_UPSTREAM_SEND, align 4
  %15 = call i32 @rrdset_flag_clear(%struct.TYPE_7__* %13, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = load i32, i32* @RRDSET_FLAG_UPSTREAM_IGNORE, align 4
  %18 = call i32 @rrdset_flag_set(%struct.TYPE_7__* %16, i32 %17)
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32, i32* @RRDSET_FLAG_UPSTREAM_SEND, align 4
  %22 = load i32, i32* @RRDSET_FLAG_UPSTREAM_IGNORE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rrdset_flag_check(%struct.TYPE_7__* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @simple_pattern_matches(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %26
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @simple_pattern_matches(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38, %26
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = load i32, i32* @RRDSET_FLAG_UPSTREAM_IGNORE, align 4
  %50 = call i32 @rrdset_flag_clear(%struct.TYPE_7__* %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = load i32, i32* @RRDSET_FLAG_UPSTREAM_SEND, align 4
  %53 = call i32 @rrdset_flag_set(%struct.TYPE_7__* %51, i32 %52)
  br label %61

54:                                               ; preds = %38
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = load i32, i32* @RRDSET_FLAG_UPSTREAM_SEND, align 4
  %57 = call i32 @rrdset_flag_clear(%struct.TYPE_7__* %55, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = load i32, i32* @RRDSET_FLAG_UPSTREAM_IGNORE, align 4
  %60 = call i32 @rrdset_flag_set(%struct.TYPE_7__* %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %47
  br label %62

62:                                               ; preds = %61, %19
  br label %63

63:                                               ; preds = %62, %12
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = load i32, i32* @RRDSET_FLAG_UPSTREAM_SEND, align 4
  %66 = call i32 @rrdset_flag_check(%struct.TYPE_7__* %64, i32 %65)
  ret i32 %66
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rrdset_flag_check(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rrdset_flag_clear(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rrdset_flag_set(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @simple_pattern_matches(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
