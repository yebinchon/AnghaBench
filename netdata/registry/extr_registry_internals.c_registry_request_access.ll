; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_request_access.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_request_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"registry_request_access('%s', '%s', '%s'): NEW REQUEST\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@registry = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @registry_request_access(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @D_REGISTRY, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @debug(i32 %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25, i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32* @registry_machine_get(i8* %28, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32* null, i32** %6, align 8
  br label %64

34:                                               ; preds = %23
  %35 = load i8*, i8** %10, align 8
  %36 = call i8* @registry_fix_machine_name(i8* %35, i64* %13)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @registry_fix_url(i8* %37, i64* %14)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32* @registry_person_get(i8* %39, i32 %40)
  store i32* %41, i32** %15, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32* @registry_url_get(i8* %42, i64 %43)
  store i32* %44, i32** %16, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @registry_person_link_to_url(i32* %45, i32* %46, i32* %47, i8* %48, i64 %49, i32 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @registry_machine_link_to_url(i32* %52, i32* %53, i32 %54)
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @registry_log(i8 signext 65, i32* %56, i32* %57, i32* %58, i8* %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 4
  %63 = load i32*, i32** %15, align 8
  store i32* %63, i32** %6, align 8
  br label %64

64:                                               ; preds = %34, %33
  %65 = load i32*, i32** %6, align 8
  ret i32* %65
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @registry_machine_get(i8*, i32) #1

declare dso_local i8* @registry_fix_machine_name(i8*, i64*) #1

declare dso_local i8* @registry_fix_url(i8*, i64*) #1

declare dso_local i32* @registry_person_get(i8*, i32) #1

declare dso_local i32* @registry_url_get(i8*, i64) #1

declare dso_local i32 @registry_person_link_to_url(i32*, i32*, i32*, i8*, i64, i32) #1

declare dso_local i32 @registry_machine_link_to_url(i32*, i32*, i32) #1

declare dso_local i32 @registry_log(i8 signext, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
