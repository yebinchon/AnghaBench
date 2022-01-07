; ModuleID = '/home/carl/AnghaBench/progress/extr_progress.c_main.c'
source_filename = "/home/carl/AnghaBench/progress/extr_progress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32 }
%struct.TYPE_3__ = type { i32, i8** }

@.str = private unnamed_addr constant [14 x i8] c"PROGRESS_ARGS\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Unable to parse PROGRESS_ARGS environment variable.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@flag_monitor = common dso_local global i64 0, align 8
@flag_monitor_continuous = common dso_local global i64 0, align 8
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mainwin = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Error initialising ncurses.\0A\00", align 1
@flag_throughput = common dso_local global i32 0, align 4
@throughput_wait_secs = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@int_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.winsize, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 (...) @populate_proc_names()
  %13 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %21, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %10, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @wordexp(i8* %41, %struct.TYPE_3__* %8, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %16
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %16
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = call i32 @parse_options(i32 %51, i8** %53)
  br label %55

55:                                               ; preds = %49, %2
  %56 = load i32, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @parse_options(i32 %56, i8** %57)
  %59 = load i32, i32* @STDOUT_FILENO, align 4
  %60 = load i32, i32* @TIOCGWINSZ, align 4
  %61 = call i32 @ioctl(i32 %59, i32 %60, %struct.winsize* %7)
  %62 = load i64, i64* @flag_monitor, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load i64, i64* @flag_monitor_continuous, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %64, %55
  %68 = load i32, i32* @LC_CTYPE, align 4
  %69 = call i32 @setlocale(i32 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32* (...) @initscr()
  store i32* %70, i32** @mainwin, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  %76 = call i32 @exit(i32 %75) #3
  unreachable

77:                                               ; preds = %67
  %78 = load i32, i32* @flag_throughput, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 1, i32* @flag_throughput, align 4
  store i32 1, i32* @throughput_wait_secs, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* @throughput_wait_secs, align 4
  %83 = call i32 @set_hlist_size(i32 %82)
  %84 = load i32, i32* @SIGINT, align 4
  %85 = load i32, i32* @int_handler, align 4
  %86 = call i32 @signal(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %109, %81
  %88 = call i32 @monitor_processes(i64* %6)
  %89 = call i32 (...) @refresh()
  %90 = load i64, i64* @flag_monitor_continuous, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @throughput_wait_secs, align 4
  %97 = mul nsw i32 1000000, %96
  %98 = call i32 @usleep(i32 %97)
  br label %99

99:                                               ; preds = %95, %92, %87
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* @flag_monitor, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103, %100
  %107 = load i64, i64* @flag_monitor_continuous, align 8
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i1 [ true, %103 ], [ %108, %106 ]
  br i1 %110, label %87, label %111

111:                                              ; preds = %109
  %112 = call i32 (...) @endwin()
  br label %117

113:                                              ; preds = %64
  %114 = load i32, i32* @throughput_wait_secs, align 4
  %115 = call i32 @set_hlist_size(i32 %114)
  %116 = call i32 @monitor_processes(i64* %6)
  br label %117

117:                                              ; preds = %113, %111
  ret i32 0
}

declare dso_local i32 @populate_proc_names(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @wordexp(i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @parse_options(i32, i8**) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32* @initscr(...) #1

declare dso_local i32 @set_hlist_size(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @monitor_processes(i64*) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @endwin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
