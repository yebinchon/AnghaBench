; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_track_reload.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_track_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.MPContext* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.MPContext = type { %struct.track**, i32 }
%struct.track = type { i32, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Cannot reload while not initialized.\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Reloaded:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_track_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_track_reload(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.track*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.track*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %11, %struct.mp_cmd_ctx** %3, align 8
  %12 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %12, i32 0, i32 4
  %14 = load %struct.MPContext*, %struct.MPContext** %13, align 8
  store %struct.MPContext* %14, %struct.MPContext** %4, align 8
  %15 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %26 = call i32 @MP_ERR(%struct.MPContext* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %93

29:                                               ; preds = %1
  %30 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.track* @mp_track_by_tid(%struct.MPContext* %30, i32 %31, i32 %38)
  store %struct.track* %39, %struct.track** %6, align 8
  store i32 -1, i32* %7, align 4
  %40 = load %struct.track*, %struct.track** %6, align 8
  %41 = icmp ne %struct.track* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %29
  %43 = load %struct.track*, %struct.track** %6, align 8
  %44 = getelementptr inbounds %struct.track, %struct.track* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.track*, %struct.track** %6, align 8
  %49 = getelementptr inbounds %struct.track, %struct.track* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.track*, %struct.track** %6, align 8
  %54 = getelementptr inbounds %struct.track, %struct.track* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @talloc_strdup(i32* null, i64 %55)
  store i8* %56, i8** %8, align 8
  %57 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %58 = load %struct.track*, %struct.track** %6, align 8
  %59 = call i32 @mp_remove_track(%struct.MPContext* %57, %struct.track* %58)
  %60 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mp_add_external_file(%struct.MPContext* %60, i8* %61, i32 %62, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @talloc_free(i8* %69)
  br label %71

71:                                               ; preds = %52, %47, %42, %29
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %93

77:                                               ; preds = %71
  %78 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %79 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %78, i32 0, i32 0
  %80 = load %struct.track**, %struct.track*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.track*, %struct.track** %80, i64 %82
  %84 = load %struct.track*, %struct.track** %83, align 8
  store %struct.track* %84, %struct.track** %9, align 8
  %85 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %86 = load %struct.track*, %struct.track** %9, align 8
  %87 = getelementptr inbounds %struct.track, %struct.track* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.track*, %struct.track** %9, align 8
  %90 = call i32 @mp_switch_track(%struct.MPContext* %85, i32 %88, %struct.track* %89, i32 0)
  %91 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %92 = call i32 @print_track_list(%struct.MPContext* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %77, %74, %24
  ret void
}

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*) #1

declare dso_local %struct.track* @mp_track_by_tid(%struct.MPContext*, i32, i32) #1

declare dso_local i8* @talloc_strdup(i32*, i64) #1

declare dso_local i32 @mp_remove_track(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @mp_add_external_file(%struct.MPContext*, i8*, i32, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @mp_switch_track(%struct.MPContext*, i32, %struct.track*, i32) #1

declare dso_local i32 @print_track_list(%struct.MPContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
