; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_type_func_class.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_type_func_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPEFUNC_COMPOSITE = common dso_local global i32 0, align 4
@TYPEFUNC_SCALAR = common dso_local global i32 0, align 4
@TYPEFUNC_COMPOSITE_DOMAIN = common dso_local global i32 0, align 4
@RECORDOID = common dso_local global i32 0, align 4
@TYPEFUNC_RECORD = common dso_local global i32 0, align 4
@VOIDOID = common dso_local global i32 0, align 4
@CSTRINGOID = common dso_local global i32 0, align 4
@TYPEFUNC_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @get_type_func_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_type_func_class(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @get_typtype(i32 %8)
  switch i32 %9, label %43 [
    i32 132, label %10
    i32 133, label %12
    i32 130, label %12
    i32 128, label %12
    i32 131, label %14
    i32 129, label %25
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @TYPEFUNC_COMPOSITE, align 4
  store i32 %11, i32* %3, align 4
  br label %45

12:                                               ; preds = %2, %2, %2
  %13 = load i32, i32* @TYPEFUNC_SCALAR, align 4
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @getBaseType(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @get_typtype(i32 %18)
  %20 = icmp eq i32 %19, 132
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @TYPEFUNC_COMPOSITE_DOMAIN, align 4
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %14
  %24 = load i32, i32* @TYPEFUNC_SCALAR, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @RECORDOID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @TYPEFUNC_RECORD, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @VOIDOID, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CSTRINGOID, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @TYPEFUNC_SCALAR, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @TYPEFUNC_OTHER, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @TYPEFUNC_OTHER, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %29, %23, %21, %12, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @get_typtype(i32) #1

declare dso_local i32 @getBaseType(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
