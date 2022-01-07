; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGis_noind_null.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGis_noind_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGgeneric_varchar = type { i32* }
%struct.ECPGgeneric_bytea = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SHRT_MIN = common dso_local global i16 0, align 2
@INT_MIN = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_LONG_MIN = common dso_local global i64 0, align 8
@NUMERIC_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPGis_noind_null(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %95 [
    i32 146, label %7
    i32 133, label %7
    i32 135, label %7
    i32 136, label %14
    i32 129, label %14
    i32 141, label %24
    i32 132, label %24
    i32 139, label %32
    i32 131, label %32
    i32 145, label %32
    i32 138, label %40
    i32 130, label %40
    i32 142, label %48
    i32 143, label %51
    i32 128, label %54
    i32 147, label %63
    i32 144, label %71
    i32 137, label %80
    i32 140, label %89
    i32 134, label %92
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %97

13:                                               ; preds = %7
  br label %96

14:                                               ; preds = %2, %2
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i16*
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* @SHRT_MIN, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %97

23:                                               ; preds = %14
  br label %96

24:                                               ; preds = %2, %2
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @INT_MIN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %97

31:                                               ; preds = %24
  br label %96

32:                                               ; preds = %2, %2, %2
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LONG_MIN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %97

39:                                               ; preds = %32
  br label %96

40:                                               ; preds = %2, %2
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LONG_LONG_MIN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %97

47:                                               ; preds = %40
  br label %96

48:                                               ; preds = %2
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @_check(i8* %49, i32 4)
  store i32 %50, i32* %3, align 4
  br label %97

51:                                               ; preds = %2
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @_check(i8* %52, i32 8)
  store i32 %53, i32* %3, align 4
  br label %97

54:                                               ; preds = %2
  %55 = load i8*, i8** %5, align 8
  %56 = bitcast i8* %55 to %struct.ECPGgeneric_varchar*
  %57 = getelementptr inbounds %struct.ECPGgeneric_varchar, %struct.ECPGgeneric_varchar* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %97

62:                                               ; preds = %54
  br label %96

63:                                               ; preds = %2
  %64 = load i8*, i8** %5, align 8
  %65 = bitcast i8* %64 to %struct.ECPGgeneric_bytea*
  %66 = getelementptr inbounds %struct.ECPGgeneric_bytea, %struct.ECPGgeneric_bytea* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %97

70:                                               ; preds = %63
  br label %96

71:                                               ; preds = %2
  %72 = load i8*, i8** %5, align 8
  %73 = bitcast i8* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NUMERIC_NULL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %97

79:                                               ; preds = %71
  br label %96

80:                                               ; preds = %2
  %81 = load i8*, i8** %5, align 8
  %82 = bitcast i8* %81 to %struct.TYPE_3__*
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NUMERIC_NULL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %97

88:                                               ; preds = %80
  br label %96

89:                                               ; preds = %2
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @_check(i8* %90, i32 4)
  store i32 %91, i32* %3, align 4
  br label %97

92:                                               ; preds = %2
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @_check(i8* %93, i32 4)
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %2
  br label %96

96:                                               ; preds = %95, %88, %79, %70, %62, %47, %39, %31, %23, %13
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %92, %89, %87, %78, %69, %61, %51, %48, %46, %38, %30, %22, %12
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @_check(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
