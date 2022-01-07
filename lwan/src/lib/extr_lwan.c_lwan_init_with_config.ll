; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_init_with_config.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_init_with_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.lwan_config = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Initializing lwan web server\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"%d threads requested, but only %d online CPUs; capping to %d threads\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%d threads requested, but max 256 supported\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Using %d threads, maximum %d sockets per thread\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_init_with_config(%struct.lwan* %0, %struct.lwan_config* %1) #0 {
  %3 = alloca %struct.lwan*, align 8
  %4 = alloca %struct.lwan_config*, align 8
  %5 = alloca i64, align 8
  store %struct.lwan* %0, %struct.lwan** %3, align 8
  store %struct.lwan_config* %1, %struct.lwan_config** %4, align 8
  %6 = load %struct.lwan*, %struct.lwan** %3, align 8
  %7 = call i32 @memset(%struct.lwan* %6, i32 0, i32 40)
  %8 = load %struct.lwan*, %struct.lwan** %3, align 8
  %9 = getelementptr inbounds %struct.lwan, %struct.lwan* %8, i32 0, i32 2
  %10 = load %struct.lwan_config*, %struct.lwan_config** %4, align 8
  %11 = call i32 @memcpy(%struct.TYPE_4__* %9, %struct.lwan_config* %10, i32 4)
  %12 = load %struct.lwan*, %struct.lwan** %3, align 8
  %13 = getelementptr inbounds %struct.lwan, %struct.lwan* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @dup_or_null(i8* %15)
  %17 = load %struct.lwan*, %struct.lwan** %3, align 8
  %18 = getelementptr inbounds %struct.lwan, %struct.lwan* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i8* %16, i8** %19, align 8
  %20 = load %struct.lwan*, %struct.lwan** %3, align 8
  %21 = getelementptr inbounds %struct.lwan, %struct.lwan* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @dup_or_null(i8* %23)
  %25 = load %struct.lwan*, %struct.lwan** %3, align 8
  %26 = getelementptr inbounds %struct.lwan, %struct.lwan* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.lwan*, %struct.lwan** %3, align 8
  %29 = call i32 @lwan_status_init(%struct.lwan* %28)
  %30 = call i32 (...) @lwan_job_thread_init()
  %31 = call i32 (...) @lwan_tables_init()
  %32 = load %struct.lwan*, %struct.lwan** %3, align 8
  %33 = load %struct.lwan_config*, %struct.lwan_config** %4, align 8
  %34 = call i32 @try_setup_from_config(%struct.lwan* %32, %struct.lwan_config* %33)
  %35 = load %struct.lwan*, %struct.lwan** %3, align 8
  %36 = call i32 @lwan_response_init(%struct.lwan* %35)
  %37 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 (...) @get_number_of_cpus()
  %39 = load %struct.lwan*, %struct.lwan** %3, align 8
  %40 = getelementptr inbounds %struct.lwan, %struct.lwan* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.lwan*, %struct.lwan** %3, align 8
  %42 = getelementptr inbounds %struct.lwan, %struct.lwan* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %2
  %47 = load %struct.lwan*, %struct.lwan** %3, align 8
  %48 = getelementptr inbounds %struct.lwan, %struct.lwan* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.lwan*, %struct.lwan** %3, align 8
  %51 = getelementptr inbounds %struct.lwan, %struct.lwan* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.lwan*, %struct.lwan** %3, align 8
  %54 = getelementptr inbounds %struct.lwan, %struct.lwan* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.lwan*, %struct.lwan** %3, align 8
  %60 = getelementptr inbounds %struct.lwan, %struct.lwan* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 2, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %46
  br label %120

63:                                               ; preds = %2
  %64 = load %struct.lwan*, %struct.lwan** %3, align 8
  %65 = getelementptr inbounds %struct.lwan, %struct.lwan* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.lwan*, %struct.lwan** %3, align 8
  %69 = getelementptr inbounds %struct.lwan, %struct.lwan* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 3, %70
  %72 = icmp sgt i32 %67, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %63
  %74 = load %struct.lwan*, %struct.lwan** %3, align 8
  %75 = getelementptr inbounds %struct.lwan, %struct.lwan* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 3
  %78 = trunc i32 %77 to i16
  %79 = zext i16 %78 to i32
  %80 = load %struct.lwan*, %struct.lwan** %3, align 8
  %81 = getelementptr inbounds %struct.lwan, %struct.lwan* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.lwan*, %struct.lwan** %3, align 8
  %84 = getelementptr inbounds %struct.lwan, %struct.lwan* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.lwan*, %struct.lwan** %3, align 8
  %88 = getelementptr inbounds %struct.lwan, %struct.lwan* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.lwan*, %struct.lwan** %3, align 8
  %91 = getelementptr inbounds %struct.lwan, %struct.lwan* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 3, %92
  %94 = call i32 (i8*, i32, ...) @lwan_status_warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89, i32 %93)
  br label %119

95:                                               ; preds = %63
  %96 = load %struct.lwan*, %struct.lwan** %3, align 8
  %97 = getelementptr inbounds %struct.lwan, %struct.lwan* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 255
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load %struct.lwan*, %struct.lwan** %3, align 8
  %103 = getelementptr inbounds %struct.lwan, %struct.lwan* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 256, i32* %104, align 4
  %105 = load %struct.lwan*, %struct.lwan** %3, align 8
  %106 = getelementptr inbounds %struct.lwan, %struct.lwan* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, i32, ...) @lwan_status_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %118

110:                                              ; preds = %95
  %111 = load %struct.lwan*, %struct.lwan** %3, align 8
  %112 = getelementptr inbounds %struct.lwan, %struct.lwan* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.lwan*, %struct.lwan** %3, align 8
  %116 = getelementptr inbounds %struct.lwan, %struct.lwan* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %101
  br label %119

119:                                              ; preds = %118, %73
  br label %120

120:                                              ; preds = %119, %62
  %121 = call i64 (...) @setup_open_file_count_limits()
  store i64 %121, i64* %5, align 8
  %122 = load %struct.lwan*, %struct.lwan** %3, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @allocate_connections(%struct.lwan* %122, i64 %123)
  %125 = load i64, i64* %5, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.lwan*, %struct.lwan** %3, align 8
  %128 = getelementptr inbounds %struct.lwan, %struct.lwan* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = udiv i32 %126, %130
  %132 = load %struct.lwan*, %struct.lwan** %3, align 8
  %133 = getelementptr inbounds %struct.lwan, %struct.lwan* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.lwan*, %struct.lwan** %3, align 8
  %136 = getelementptr inbounds %struct.lwan, %struct.lwan* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.lwan*, %struct.lwan** %3, align 8
  %140 = getelementptr inbounds %struct.lwan, %struct.lwan* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @lwan_status_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %138, i32 %142)
  %144 = load i32, i32* @SIGPIPE, align 4
  %145 = load i32, i32* @SIG_IGN, align 4
  %146 = call i32 @signal(i32 %144, i32 %145)
  %147 = call i32 (...) @lwan_readahead_init()
  %148 = load %struct.lwan*, %struct.lwan** %3, align 8
  %149 = call i32 @lwan_thread_init(%struct.lwan* %148)
  %150 = load %struct.lwan*, %struct.lwan** %3, align 8
  %151 = call i32 @lwan_socket_init(%struct.lwan* %150)
  %152 = call i32 (...) @lwan_http_authorize_init()
  %153 = load %struct.lwan*, %struct.lwan** %3, align 8
  %154 = call i32 @lwan_fd_watch_init(%struct.lwan* %153)
  ret void
}

declare dso_local i32 @memset(%struct.lwan*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.lwan_config*, i32) #1

declare dso_local i8* @dup_or_null(i8*) #1

declare dso_local i32 @lwan_status_init(%struct.lwan*) #1

declare dso_local i32 @lwan_job_thread_init(...) #1

declare dso_local i32 @lwan_tables_init(...) #1

declare dso_local i32 @try_setup_from_config(%struct.lwan*, %struct.lwan_config*) #1

declare dso_local i32 @lwan_response_init(%struct.lwan*) #1

declare dso_local i32 @lwan_status_debug(i8*) #1

declare dso_local i32 @get_number_of_cpus(...) #1

declare dso_local i32 @lwan_status_warning(i8*, i32, ...) #1

declare dso_local i64 @setup_open_file_count_limits(...) #1

declare dso_local i32 @allocate_connections(%struct.lwan*, i64) #1

declare dso_local i32 @lwan_status_info(i8*, i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @lwan_readahead_init(...) #1

declare dso_local i32 @lwan_thread_init(%struct.lwan*) #1

declare dso_local i32 @lwan_socket_init(%struct.lwan*) #1

declare dso_local i32 @lwan_http_authorize_init(...) #1

declare dso_local i32 @lwan_fd_watch_init(%struct.lwan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
