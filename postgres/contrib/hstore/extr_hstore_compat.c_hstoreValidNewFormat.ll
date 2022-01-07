; ModuleID = '/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_compat.c_hstoreValidNewFormat.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_compat.c_hstoreValidNewFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@HS_FLAG_NEWVERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @hstoreValidNewFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hstoreValidNewFormat(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @HS_COUNT(%struct.TYPE_6__* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = call i32* @ARRPTR(%struct.TYPE_6__* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 2, %17
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @HSE_ENDPOS(i32 %22)
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ %23, %15 ], [ 0, %24 ]
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @CALCDATASIZE(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HS_FLAG_NEWVERSION, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 2, i32* %2, align 4
  br label %124

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 2, i32* %2, align 4
  br label %124

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @HSE_ISFIRST(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %124

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = call i32 @VARSIZE(%struct.TYPE_6__* %50)
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %124

54:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %85, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 2, %57
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @HSE_ISFIRST(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @HSE_ENDPOS(i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @HSE_ENDPOS(i32 %80)
  %82 = icmp slt i32 %74, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68, %60
  store i32 0, i32* %2, align 4
  br label %124

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %55

88:                                               ; preds = %55
  store i32 1, i32* %8, align 4
  br label %89

89:                                               ; preds = %114, %88
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %89
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @HSTORE_KEYLEN(i32* %94, i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i64 @HSTORE_KEYLEN(i32* %97, i32 %99)
  %101 = icmp slt i64 %96, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %124

103:                                              ; preds = %93
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @HSE_ISNULL(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %124

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %89

117:                                              ; preds = %89
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = call i32 @VARSIZE(%struct.TYPE_6__* %119)
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 1, i32* %2, align 4
  br label %124

123:                                              ; preds = %117
  store i32 2, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %122, %112, %102, %83, %53, %47, %40, %36
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @HS_COUNT(%struct.TYPE_6__*) #1

declare dso_local i32* @ARRPTR(%struct.TYPE_6__*) #1

declare dso_local i32 @HSE_ENDPOS(i32) #1

declare dso_local i32 @CALCDATASIZE(i32, i32) #1

declare dso_local i64 @HSE_ISFIRST(i32) #1

declare dso_local i32 @VARSIZE(%struct.TYPE_6__*) #1

declare dso_local i64 @HSTORE_KEYLEN(i32*, i32) #1

declare dso_local i64 @HSE_ISNULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
