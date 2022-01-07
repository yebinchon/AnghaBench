; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smackqueue.c_queue_create.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smackqueue.c_queue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Queue = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: out of memory error\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Queue* @queue_create() #0 {
  %1 = alloca %struct.Queue*, align 8
  %2 = call i64 @malloc(i32 4)
  %3 = inttoptr i64 %2 to %struct.Queue*
  store %struct.Queue* %3, %struct.Queue** %1, align 8
  %4 = load %struct.Queue*, %struct.Queue** %1, align 8
  %5 = icmp eq %struct.Queue* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @exit(i32 1) #3
  unreachable

10:                                               ; preds = %0
  %11 = load %struct.Queue*, %struct.Queue** %1, align 8
  %12 = call i32 @memset(%struct.Queue* %11, i32 0, i32 4)
  %13 = load %struct.Queue*, %struct.Queue** %1, align 8
  ret %struct.Queue* %13
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.Queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
