; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_font.c_match_name_table_language.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_font.c_match_name_table_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@mac_langid_table = common dso_local global i64* null, align 8
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @match_name_table_language to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_name_table_language(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @GET_BE_WORD(i32 %9)
  switch i32 %10, label %69 [
    i32 128, label %11
    i32 129, label %24
    i32 130, label %46
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GET_BE_WORD(i32 %14)
  switch i32 %15, label %22 [
    i32 131, label %16
    i32 132, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @GET_BE_WORD(i32 %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  br label %23

22:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %90

23:                                               ; preds = %16
  br label %70

24:                                               ; preds = %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = call i32 @get_mac_code_page(%struct.TYPE_4__* %25)
  %27 = call i32 @IsValidCodePage(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %90

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GET_BE_WORD(i32 %33)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64*, i64** @mac_langid_table, align 8
  %38 = call i64 @ARRAY_SIZE(i64* %37)
  %39 = icmp uge i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %90

41:                                               ; preds = %30
  %42 = load i64*, i64** @mac_langid_table, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  br label %70

46:                                               ; preds = %2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GET_BE_WORD(i32 %49)
  switch i32 %50, label %67 [
    i32 135, label %51
    i32 134, label %51
    i32 133, label %51
  ]

51:                                               ; preds = %46, %46, %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GET_BE_WORD(i32 %54)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64*, i64** @mac_langid_table, align 8
  %59 = call i64 @ARRAY_SIZE(i64* %58)
  %60 = icmp uge i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %90

62:                                               ; preds = %51
  %63 = load i64*, i64** @mac_langid_table, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %6, align 8
  br label %68

67:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %90

68:                                               ; preds = %62
  br label %70

69:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

70:                                               ; preds = %68, %41, %23
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 3, i32* %3, align 4
  br label %90

75:                                               ; preds = %70
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @PRIMARYLANGID(i64 %76)
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @PRIMARYLANGID(i64 %78)
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 2, i32* %3, align 4
  br label %90

82:                                               ; preds = %75
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @LANG_ENGLISH, align 4
  %85 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %86 = call i64 @MAKELANGID(i32 %84, i32 %85)
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %90

89:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %88, %81, %74, %69, %67, %61, %40, %29, %22
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i32 @IsValidCodePage(i32) #1

declare dso_local i32 @get_mac_code_page(%struct.TYPE_4__*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @PRIMARYLANGID(i64) #1

declare dso_local i64 @MAKELANGID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
