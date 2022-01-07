; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_pac.c_kuhl_m_pac_stringToSids.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_pac.c_kuhl_m_pac_stringToSids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i32] [i32 44, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@DEFAULT_GROUP_ATTRIBUTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_pac_stringToSids(i64 %0, %struct.TYPE_3__** %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %12, align 8
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %102

16:                                               ; preds = %3
  %17 = load i64, i64* %4, align 8
  %18 = call i32* @_wcsdup(i64 %17)
  store i32* %18, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  store i32* null, i32** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32* @wcstok_s(i32* %21, i8* bitcast ([2 x i32]* @.str to i8*), i32** %8)
  store i32* %22, i32** %9, align 8
  br label %23

23:                                               ; preds = %37, %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @ConvertStringSidToSid(i32* %27, i32** %11)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @LocalFree(i32* %34)
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36
  %38 = call i32* @wcstok_s(i32* null, i8* bitcast ([2 x i32]* @.str to i8*), i32** %8)
  store i32* %38, i32** %9, align 8
  br label %23

39:                                               ; preds = %23
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @free(i32* %40)
  br label %42

42:                                               ; preds = %39, %16
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = load i32, i32* @LPTR, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i64 @LocalAlloc(i32 %47, i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_3__*
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %55, align 8
  %56 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %56, label %57, label %101

57:                                               ; preds = %46
  %58 = load i64, i64* %4, align 8
  %59 = call i32* @_wcsdup(i64 %58)
  store i32* %59, i32** %7, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  store i32* null, i32** %8, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32* @wcstok_s(i32* %62, i8* bitcast ([2 x i32]* @.str to i8*), i32** %8)
  store i32* %63, i32** %9, align 8
  br label %64

64:                                               ; preds = %95, %61
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i1 [ false, %64 ], [ %71, %69 ]
  br i1 %73, label %74, label %97

74:                                               ; preds = %72
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = bitcast i32* %81 to i32**
  %83 = call i64 @ConvertStringSidToSid(i32* %75, i32** %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = load i32, i32* @DEFAULT_GROUP_ATTRIBUTES, align 4
  %87 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 4
  br label %94

94:                                               ; preds = %85, %74
  br label %95

95:                                               ; preds = %94
  %96 = call i32* @wcstok_s(i32* null, i8* bitcast ([2 x i32]* @.str to i8*), i32** %8)
  store i32* %96, i32** %9, align 8
  br label %64

97:                                               ; preds = %72
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @free(i32* %98)
  br label %100

100:                                              ; preds = %97, %57
  br label %101

101:                                              ; preds = %100, %46, %42
  br label %102

102:                                              ; preds = %101, %3
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = icmp ne %struct.TYPE_3__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ false, %102 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  ret i32 %112
}

declare dso_local i32* @_wcsdup(i64) #1

declare dso_local i32* @wcstok_s(i32*, i8*, i32**) #1

declare dso_local i64 @ConvertStringSidToSid(i32*, i32**) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
