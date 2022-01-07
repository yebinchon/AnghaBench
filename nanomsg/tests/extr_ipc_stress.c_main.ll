; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_ipc_stress.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_ipc_stress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@THREAD_COUNT = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@client = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_thread, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @THREAD_COUNT, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca %struct.nn_thread, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @server, align 4
  %11 = call i32 @nn_thread_init(%struct.nn_thread* %3, i32 %10, i8* null)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %25, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @THREAD_COUNT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %9, i64 %18
  %20 = load i32, i32* @client, align 4
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @nn_thread_init(%struct.nn_thread* %19, i32 %20, i8* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %12

28:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %38, %28
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @THREAD_COUNT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %9, i64 %35
  %37 = call i32 @nn_thread_term(%struct.nn_thread* %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %29

41:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i8*) #2

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
