; ModuleID = '/home/carl/AnghaBench/reactos/base/services/telnetd/extr_syslog.c_vsyslog.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/telnetd/extr_syslog.c_vsyslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@vsyslog.month = internal global [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@log_mask = common dso_local global i32 0, align 4
@LOG_FACMASK = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@syslog_facility = common dso_local global i32 0, align 4
@datagramm = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"<%d>%s %2d %02d:%02d:%02d %s %s%s: \00", align 1
@local_hostname = common dso_local global i8* null, align 8
@syslog_ident = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str_pid = common dso_local global i32 0, align 4
@datagramm_size = common dso_local global i64 0, align 8
@sock = common dso_local global i32 0, align 4
@sa_logger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsyslog(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @LOG_PRI(i32 %10)
  %12 = call i32 @LOG_MASK(i32 %11)
  %13 = load i32, i32* @log_mask, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %92

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LOG_FACMASK, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @openlog(i32* null, i32 0, i32 %20)
  %22 = load i32, i32* @initialized, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %92

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @LOG_FACMASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @syslog_facility, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = call i32 @GetLocalTime(%struct.TYPE_3__* %7)
  %36 = load i64, i64* @datagramm, align 8
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [12 x i8*], [12 x i8*]* @vsyslog.month, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** @local_hostname, align 8
  %53 = load i8*, i8** @syslog_ident, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %34
  %56 = load i8*, i8** @syslog_ident, align 8
  br label %58

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i8* [ %56, %55 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %57 ]
  %60 = load i32, i32* @str_pid, align 4
  %61 = call i32 @sprintf(i64 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %37, i8* %43, i32 %45, i32 %47, i32 %49, i32 %51, i8* %52, i8* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i64, i64* @datagramm, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i64, i64* @datagramm_size, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @vsnprintf(i64 %65, i64 %69, i8* %70, i32 %71)
  %73 = load i64, i64* @datagramm, align 8
  %74 = call i8* @strchr(i64 %73, i8 signext 10)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = load i8*, i8** %9, align 8
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %77, %58
  %80 = load i64, i64* @datagramm, align 8
  %81 = call i8* @strchr(i64 %80, i8 signext 13)
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** %9, align 8
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32, i32* @sock, align 4
  %88 = load i64, i64* @datagramm, align 8
  %89 = load i64, i64* @datagramm, align 8
  %90 = call i32 @strlen(i64 %89)
  %91 = call i32 @sendto(i32 %87, i64 %88, i32 %90, i32 0, i32* @sa_logger, i32 4)
  br label %92

92:                                               ; preds = %86, %24, %16
  ret void
}

declare dso_local i32 @LOG_MASK(i32) #1

declare dso_local i32 @LOG_PRI(i32) #1

declare dso_local i32 @openlog(i32*, i32, i32) #1

declare dso_local i32 @GetLocalTime(%struct.TYPE_3__*) #1

declare dso_local i32 @sprintf(i64, i8*, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @vsnprintf(i64, i64, i8*, i32) #1

declare dso_local i8* @strchr(i64, i8 signext) #1

declare dso_local i32 @sendto(i32, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
