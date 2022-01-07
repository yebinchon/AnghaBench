; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_parent_use_pipes.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_parent_use_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_child_s = type { i32, i8*, i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@fd_stdout = common dso_local global i8** null, align 8
@fd_stderr = common dso_local global i8** null, align 8
@FPM_EV_READ = common dso_local global i32 0, align 4
@fpm_stdio_child_said = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_stdio_parent_use_pipes(%struct.fpm_child_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_child_s*, align 8
  store %struct.fpm_child_s* %0, %struct.fpm_child_s** %3, align 8
  %4 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %5 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %4, i32 0, i32 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 0, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load i8**, i8*** @fd_stdout, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @close(i8* %16)
  %18 = load i8**, i8*** @fd_stderr, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @close(i8* %20)
  %22 = load i8**, i8*** @fd_stdout, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %26 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8**, i8*** @fd_stderr, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %31 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %33 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %32, i32 0, i32 2
  %34 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %35 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @FPM_EV_READ, align 4
  %38 = load i32, i32* @fpm_stdio_child_said, align 4
  %39 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %40 = call i32 @fpm_event_set(i32* %33, i8* %36, i32 %37, i32 %38, %struct.fpm_child_s* %39)
  %41 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %42 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %41, i32 0, i32 2
  %43 = call i32 @fpm_event_add(i32* %42, i32 0)
  %44 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %45 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %44, i32 0, i32 0
  %46 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %47 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @FPM_EV_READ, align 4
  %50 = load i32, i32* @fpm_stdio_child_said, align 4
  %51 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %52 = call i32 @fpm_event_set(i32* %45, i8* %48, i32 %49, i32 %50, %struct.fpm_child_s* %51)
  %53 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %54 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %53, i32 0, i32 0
  %55 = call i32 @fpm_event_add(i32* %54, i32 0)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %13, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @close(i8*) #1

declare dso_local i32 @fpm_event_set(i32*, i8*, i32, i32, %struct.fpm_child_s*) #1

declare dso_local i32 @fpm_event_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
