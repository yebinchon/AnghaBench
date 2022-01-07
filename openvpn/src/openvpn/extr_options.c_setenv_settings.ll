; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_setenv_settings.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_setenv_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.options = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32** }

@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"daemon_log_redirect\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"daemon_start_time\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"daemon_pid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_settings(%struct.env_set* %0, %struct.options* %1) #0 {
  %3 = alloca %struct.env_set*, align 8
  %4 = alloca %struct.options*, align 8
  %5 = alloca i32, align 4
  store %struct.env_set* %0, %struct.env_set** %3, align 8
  store %struct.options* %1, %struct.options** %4, align 8
  %6 = load %struct.env_set*, %struct.env_set** %3, align 8
  %7 = load %struct.options*, %struct.options** %4, align 8
  %8 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @setenv_str(%struct.env_set* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.env_set*, %struct.env_set** %3, align 8
  %12 = load %struct.options*, %struct.options** %4, align 8
  %13 = getelementptr inbounds %struct.options, %struct.options* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @setenv_int(%struct.env_set* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.env_set*, %struct.env_set** %3, align 8
  %17 = load %struct.options*, %struct.options** %4, align 8
  %18 = getelementptr inbounds %struct.options, %struct.options* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @setenv_int(%struct.env_set* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.env_set*, %struct.env_set** %3, align 8
  %22 = load %struct.options*, %struct.options** %4, align 8
  %23 = getelementptr inbounds %struct.options, %struct.options* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @setenv_int(%struct.env_set* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load %struct.env_set*, %struct.env_set** %3, align 8
  %27 = call i32 @time(i32* null)
  %28 = call i32 @setenv_long_long(%struct.env_set* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = load %struct.env_set*, %struct.env_set** %3, align 8
  %30 = call i32 (...) @platform_getpid()
  %31 = call i32 @setenv_int(%struct.env_set* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load %struct.options*, %struct.options** %4, align 8
  %33 = getelementptr inbounds %struct.options, %struct.options* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.options*, %struct.options** %4, align 8
  %40 = getelementptr inbounds %struct.options, %struct.options* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = load %struct.env_set*, %struct.env_set** %3, align 8
  %47 = load %struct.options*, %struct.options** %4, align 8
  %48 = getelementptr inbounds %struct.options, %struct.options* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @setenv_connection_entry(%struct.env_set* %46, i32* %55, i32 %57)
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %37

62:                                               ; preds = %37
  br label %68

63:                                               ; preds = %2
  %64 = load %struct.env_set*, %struct.env_set** %3, align 8
  %65 = load %struct.options*, %struct.options** %4, align 8
  %66 = getelementptr inbounds %struct.options, %struct.options* %65, i32 0, i32 0
  %67 = call i32 @setenv_connection_entry(%struct.env_set* %64, i32* %66, i32 1)
  br label %68

68:                                               ; preds = %63, %62
  ret void
}

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i32) #1

declare dso_local i32 @setenv_int(%struct.env_set*, i8*, i32) #1

declare dso_local i32 @setenv_long_long(%struct.env_set*, i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @platform_getpid(...) #1

declare dso_local i32 @setenv_connection_entry(%struct.env_set*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
