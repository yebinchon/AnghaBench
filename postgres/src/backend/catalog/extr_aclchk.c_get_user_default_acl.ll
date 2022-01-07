; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_get_user_default_acl.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_get_user_default_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFACLOBJ_RELATION = common dso_local global i8 0, align 1
@DEFACLOBJ_SEQUENCE = common dso_local global i8 0, align 1
@DEFACLOBJ_FUNCTION = common dso_local global i8 0, align 1
@DEFACLOBJ_TYPE = common dso_local global i8 0, align 1
@DEFACLOBJ_NAMESPACE = common dso_local global i8 0, align 1
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_user_default_acl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = call i64 (...) @IsBootstrapProcessingMode()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %68

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %28 [
    i32 129, label %18
    i32 130, label %20
    i32 132, label %22
    i32 128, label %24
    i32 131, label %26
  ]

18:                                               ; preds = %16
  %19 = load i8, i8* @DEFACLOBJ_RELATION, align 1
  store i8 %19, i8* %12, align 1
  br label %29

20:                                               ; preds = %16
  %21 = load i8, i8* @DEFACLOBJ_SEQUENCE, align 1
  store i8 %21, i8* %12, align 1
  br label %29

22:                                               ; preds = %16
  %23 = load i8, i8* @DEFACLOBJ_FUNCTION, align 1
  store i8 %23, i8* %12, align 1
  br label %29

24:                                               ; preds = %16
  %25 = load i8, i8* @DEFACLOBJ_TYPE, align 1
  store i8 %25, i8* %12, align 1
  br label %29

26:                                               ; preds = %16
  %27 = load i8, i8* @DEFACLOBJ_NAMESPACE, align 1
  store i8 %27, i8* %12, align 1
  br label %29

28:                                               ; preds = %16
  store i32* null, i32** %4, align 8
  br label %68

29:                                               ; preds = %26, %24, %22, %20, %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @InvalidOid, align 4
  %32 = load i8, i8* %12, align 1
  %33 = call i32* @get_default_acl_internal(i32 %30, i32 %31, i8 signext %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i8, i8* %12, align 1
  %37 = call i32* @get_default_acl_internal(i32 %34, i32 %35, i8 signext %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32* null, i32** %4, align 8
  br label %68

44:                                               ; preds = %40, %29
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32* @acldefault(i32 %45, i32 %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32*, i32** %11, align 8
  store i32* %51, i32** %9, align 8
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32* @aclmerge(i32* %53, i32* %54, i32 %55)
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @aclitemsort(i32* %57)
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @aclitemsort(i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i64 @aclequal(i32* %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32* null, i32** %8, align 8
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32*, i32** %8, align 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %66, %43, %28, %15
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32* @get_default_acl_internal(i32, i32, i8 signext) #1

declare dso_local i32* @acldefault(i32, i32) #1

declare dso_local i32* @aclmerge(i32*, i32*, i32) #1

declare dso_local i32 @aclitemsort(i32*) #1

declare dso_local i64 @aclequal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
