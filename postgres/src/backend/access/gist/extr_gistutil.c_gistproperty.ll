; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistproperty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistproperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIST_DISTANCE_PROC = common dso_local global i32 0, align 4
@GIST_FETCH_PROC = common dso_local global i32 0, align 4
@AMPROCNUM = common dso_local global i32 0, align 4
@GIST_COMPRESS_PROC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gistproperty(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %78

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %27 [
    i32 129, label %23
    i32 128, label %25
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @GIST_DISTANCE_PROC, align 4
  store i32 %24, i32* %17, align 4
  br label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @GIST_FETCH_PROC, align 4
  store i32 %26, i32* %17, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %78

28:                                               ; preds = %25, %23
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @get_index_column_opclass(i32 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @OidIsValid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %13, align 8
  store i32 1, i32* %36, align 4
  store i32 1, i32* %7, align 4
  br label %78

37:                                               ; preds = %28
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @get_opclass_opfamily_and_input_type(i32 %38, i32* %15, i32* %16)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  store i32 1, i32* %42, align 4
  store i32 1, i32* %7, align 4
  br label %78

43:                                               ; preds = %37
  %44 = load i32, i32* @AMPROCNUM, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @ObjectIdGetDatum(i32 %45)
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @ObjectIdGetDatum(i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @ObjectIdGetDatum(i32 %49)
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @Int16GetDatum(i32 %51)
  %53 = call i32 @SearchSysCacheExists4(i32 %44, i32 %46, i32 %48, i32 %50, i32 %52)
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %76

57:                                               ; preds = %43
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @AMPROCNUM, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @ObjectIdGetDatum(i32 %63)
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @ObjectIdGetDatum(i32 %65)
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @ObjectIdGetDatum(i32 %67)
  %69 = load i32, i32* @GIST_COMPRESS_PROC, align 4
  %70 = call i32 @Int16GetDatum(i32 %69)
  %71 = call i32 @SearchSysCacheExists4(i32 %62, i32 %64, i32 %66, i32 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %61, %57, %43
  %77 = load i32*, i32** %13, align 8
  store i32 0, i32* %77, align 4
  store i32 1, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %41, %35, %27, %20
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @get_index_column_opclass(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @get_opclass_opfamily_and_input_type(i32, i32*, i32*) #1

declare dso_local i32 @SearchSysCacheExists4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
