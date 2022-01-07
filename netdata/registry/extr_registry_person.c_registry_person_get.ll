; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_get.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Registry: registry_person_get('%s'): creating dictionary of urls\00", align 1
@GUID_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Registry: person guid '%s' is not a valid guid. Ignoring it.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @registry_person_get(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @D_REGISTRY, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @debug(i32 %8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32* null, i32** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load i32, i32* @GUID_LEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @regenerate_guid(i8* %24, i8* %23)
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %36

33:                                               ; preds = %18
  store i8* %23, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32* @registry_person_find(i8* %34)
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  br label %38

38:                                               ; preds = %36, %13, %2
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = call i32* @registry_person_allocate(i32* null, i32 %42)
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %5, align 8
  ret i32* %45
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @regenerate_guid(i8*, i8*) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32* @registry_person_find(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @registry_person_allocate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
