; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_pre_init.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@module = common dso_local global %struct.TYPE_8__* null, align 8
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"event mechanism '%s' is not available on this system\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"unable to find a suitable event mechanism on this system\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_event_pre_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call %struct.TYPE_8__* (...) @fpm_event_kqueue_module()
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** @module, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcasecmp(i32 %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %7
  store i32 0, i32* %2, align 4
  br label %110

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = call %struct.TYPE_8__* (...) @fpm_event_port_module()
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** @module, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strcasecmp(i32 %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %23
  store i32 0, i32* %2, align 4
  br label %110

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %19
  %36 = call %struct.TYPE_8__* (...) @fpm_event_epoll_module()
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** @module, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcasecmp(i32 %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %39
  store i32 0, i32* %2, align 4
  br label %110

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %35
  %52 = call %struct.TYPE_8__* (...) @fpm_event_devpoll_module()
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** @module, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i64 @strcasecmp(i32 %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %55
  store i32 0, i32* %2, align 4
  br label %110

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %51
  %68 = call %struct.TYPE_8__* (...) @fpm_event_poll_module()
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** @module, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i8*, i8** %3, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @strcasecmp(i32 %77, i8* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %71
  store i32 0, i32* %2, align 4
  br label %110

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %67
  %84 = call %struct.TYPE_8__* (...) @fpm_event_select_module()
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** @module, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i8*, i8** %3, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @module, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %3, align 8
  %95 = call i64 @strcasecmp(i32 %93, i8* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90, %87
  store i32 0, i32* %2, align 4
  br label %110

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %83
  %100 = load i8*, i8** %3, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @ZLOG_ERROR, align 4
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 (i32, i8*, ...) @zlog(i32 %103, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %104)
  br label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @ZLOG_ERROR, align 4
  %108 = call i32 (i32, i8*, ...) @zlog(i32 %107, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %102
  store i32 -1, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %97, %81, %65, %49, %33, %17
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_8__* @fpm_event_kqueue_module(...) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @fpm_event_port_module(...) #1

declare dso_local %struct.TYPE_8__* @fpm_event_epoll_module(...) #1

declare dso_local %struct.TYPE_8__* @fpm_event_devpoll_module(...) #1

declare dso_local %struct.TYPE_8__* @fpm_event_poll_module(...) #1

declare dso_local %struct.TYPE_8__* @fpm_event_select_module(...) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
