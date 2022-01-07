; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smackqueue.c_enqueue.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smackqueue.c_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Queue = type { %struct.QueueElement*, %struct.QueueElement* }
%struct.QueueElement = type { i32, %struct.QueueElement* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: out of memory error\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue(%struct.Queue* %0, i32 %1) #0 {
  %3 = alloca %struct.Queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.QueueElement*, align 8
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @malloc(i32 16)
  %7 = inttoptr i64 %6 to %struct.QueueElement*
  store %struct.QueueElement* %7, %struct.QueueElement** %5, align 8
  %8 = load %struct.QueueElement*, %struct.QueueElement** %5, align 8
  %9 = icmp eq %struct.QueueElement* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = load %struct.Queue*, %struct.Queue** %3, align 8
  %16 = getelementptr inbounds %struct.Queue, %struct.Queue* %15, i32 0, i32 1
  %17 = load %struct.QueueElement*, %struct.QueueElement** %16, align 8
  %18 = icmp eq %struct.QueueElement* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.QueueElement*, %struct.QueueElement** %5, align 8
  %21 = load %struct.Queue*, %struct.Queue** %3, align 8
  %22 = getelementptr inbounds %struct.Queue, %struct.Queue* %21, i32 0, i32 1
  store %struct.QueueElement* %20, %struct.QueueElement** %22, align 8
  br label %29

23:                                               ; preds = %14
  %24 = load %struct.QueueElement*, %struct.QueueElement** %5, align 8
  %25 = load %struct.Queue*, %struct.Queue** %3, align 8
  %26 = getelementptr inbounds %struct.Queue, %struct.Queue* %25, i32 0, i32 0
  %27 = load %struct.QueueElement*, %struct.QueueElement** %26, align 8
  %28 = getelementptr inbounds %struct.QueueElement, %struct.QueueElement* %27, i32 0, i32 1
  store %struct.QueueElement* %24, %struct.QueueElement** %28, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.QueueElement*, %struct.QueueElement** %5, align 8
  %32 = getelementptr inbounds %struct.QueueElement, %struct.QueueElement* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.QueueElement*, %struct.QueueElement** %5, align 8
  %34 = getelementptr inbounds %struct.QueueElement, %struct.QueueElement* %33, i32 0, i32 1
  store %struct.QueueElement* null, %struct.QueueElement** %34, align 8
  %35 = load %struct.QueueElement*, %struct.QueueElement** %5, align 8
  %36 = load %struct.Queue*, %struct.Queue** %3, align 8
  %37 = getelementptr inbounds %struct.Queue, %struct.Queue* %36, i32 0, i32 0
  store %struct.QueueElement* %35, %struct.QueueElement** %37, align 8
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
