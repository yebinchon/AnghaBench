; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm.c_fpm_init.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm.c_fpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i8*, i8*, i32, i32, i64, i64, i32 }

@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FPM_EXIT_OK = common dso_local global i32 0, align 4
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"FPM initialization failed\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fpm is running, pid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_init(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8** %1, i8*** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  %21 = load i8**, i8*** %12, align 8
  store i8** %21, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %9
  %25 = load i8*, i8** %13, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @strdup(i8* %30)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 8), align 8
  br label %32

32:                                               ; preds = %29, %24, %9
  %33 = load i8*, i8** %14, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 2), align 8
  %34 = load i8*, i8** %15, align 8
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 3), align 8
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 4), align 8
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 5), align 4
  %37 = call i64 (...) @fpm_php_init_main()
  %38 = icmp sgt i64 0, %37
  br i1 %38, label %74, label %39

39:                                               ; preds = %32
  %40 = call i64 (...) @fpm_stdio_init_main()
  %41 = icmp sgt i64 0, %40
  br i1 %41, label %74, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i64 @fpm_conf_init_main(i32 %43, i32 %44)
  %46 = icmp sgt i64 0, %45
  br i1 %46, label %74, label %47

47:                                               ; preds = %42
  %48 = call i64 (...) @fpm_unix_init_main()
  %49 = icmp sgt i64 0, %48
  br i1 %49, label %74, label %50

50:                                               ; preds = %47
  %51 = call i64 (...) @fpm_scoreboard_init_main()
  %52 = icmp sgt i64 0, %51
  br i1 %52, label %74, label %53

53:                                               ; preds = %50
  %54 = call i64 (...) @fpm_pctl_init_main()
  %55 = icmp sgt i64 0, %54
  br i1 %55, label %74, label %56

56:                                               ; preds = %53
  %57 = call i64 (...) @fpm_env_init_main()
  %58 = icmp sgt i64 0, %57
  br i1 %58, label %74, label %59

59:                                               ; preds = %56
  %60 = call i64 (...) @fpm_signals_init_main()
  %61 = icmp sgt i64 0, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = call i64 (...) @fpm_children_init_main()
  %64 = icmp sgt i64 0, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = call i64 (...) @fpm_sockets_init_main()
  %67 = icmp sgt i64 0, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = call i64 (...) @fpm_worker_pool_init_main()
  %70 = icmp sgt i64 0, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = call i64 (...) @fpm_event_init_main()
  %73 = icmp sgt i64 0, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %71, %68, %65, %62, %59, %56, %53, %50, %47, %42, %39, %32
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 7), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @FPM_EXIT_OK, align 4
  %79 = call i32 @exit(i32 %78) #3
  unreachable

80:                                               ; preds = %74
  %81 = load i32, i32* @ZLOG_ERROR, align 4
  %82 = call i32 (i32, i8*, ...) @zlog(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %95

83:                                               ; preds = %71
  %84 = call i64 (...) @fpm_conf_write_pid()
  %85 = icmp sgt i64 0, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ZLOG_ERROR, align 4
  %88 = call i32 (i32, i8*, ...) @zlog(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %95

89:                                               ; preds = %83
  %90 = call i32 (...) @fpm_stdio_init_final()
  %91 = load i32, i32* @ZLOG_NOTICE, align 4
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 6), align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 (i32, i8*, ...) @zlog(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %89, %86, %80
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @fpm_php_init_main(...) #1

declare dso_local i64 @fpm_stdio_init_main(...) #1

declare dso_local i64 @fpm_conf_init_main(i32, i32) #1

declare dso_local i64 @fpm_unix_init_main(...) #1

declare dso_local i64 @fpm_scoreboard_init_main(...) #1

declare dso_local i64 @fpm_pctl_init_main(...) #1

declare dso_local i64 @fpm_env_init_main(...) #1

declare dso_local i64 @fpm_signals_init_main(...) #1

declare dso_local i64 @fpm_children_init_main(...) #1

declare dso_local i64 @fpm_sockets_init_main(...) #1

declare dso_local i64 @fpm_worker_pool_init_main(...) #1

declare dso_local i64 @fpm_event_init_main(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i64 @fpm_conf_write_pid(...) #1

declare dso_local i32 @fpm_stdio_init_final(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
