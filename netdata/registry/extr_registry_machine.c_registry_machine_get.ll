; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_machine.c_registry_machine_get.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_machine.c_registry_machine_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Registry: machine guid '%s' is not a valid guid. Ignoring it.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @registry_machine_get(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load i32, i32* @GUID_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @regenerate_guid(i8* %26, i8* %25)
  %28 = icmp eq i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %45

35:                                               ; preds = %20
  store i8* %25, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32* @registry_machine_find(i8* %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32* @registry_machine_allocate(i8* %41, i32 %42)
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %47

47:                                               ; preds = %45, %15
  %48 = load i32*, i32** %5, align 8
  ret i32* %48
}

declare dso_local i64 @likely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @regenerate_guid(i8*, i8*) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32* @registry_machine_find(i8*) #1

declare dso_local i32* @registry_machine_allocate(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
