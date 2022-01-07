; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_proc.c_proc_handler_add.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_proc.c_proc_handler_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.proc_info = type { i8*, i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Function declaration invalid: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_handler_add(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.proc_info, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %32

13:                                               ; preds = %4
  %14 = call i32 @memset(%struct.proc_info* %9, i32 0, i32 16)
  %15 = getelementptr inbounds %struct.proc_info, %struct.proc_info* %9, i32 0, i32 2
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @parse_decl_string(i32* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @LOG_ERROR, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @blog(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %32

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.proc_info, %struct.proc_info* %9, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds %struct.proc_info, %struct.proc_info* %9, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @da_push_back(i32 %30, %struct.proc_info* %9)
  br label %32

32:                                               ; preds = %23, %19, %12
  ret void
}

declare dso_local i32 @memset(%struct.proc_info*, i32, i32) #1

declare dso_local i32 @parse_decl_string(i32*, i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*) #1

declare dso_local i32 @da_push_back(i32, %struct.proc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
