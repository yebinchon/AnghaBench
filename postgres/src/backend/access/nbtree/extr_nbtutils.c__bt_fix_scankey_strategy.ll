; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_fix_scankey_strategy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_fix_scankey_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i8*, i8* }

@SK_BT_INDOPTION_SHIFT = common dso_local global i32 0, align 4
@SK_ISNULL = common dso_local global i32 0, align 4
@SK_ROW_HEADER = common dso_local global i32 0, align 4
@SK_SEARCHNULL = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i8* null, align 8
@InvalidOid = common dso_local global i8* null, align 8
@SK_SEARCHNOTNULL = common dso_local global i32 0, align 4
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4
@BTGreaterStrategyNumber = common dso_local global i8* null, align 8
@BTLessStrategyNumber = common dso_local global i8* null, align 8
@SK_BT_DESC = common dso_local global i32 0, align 4
@SK_ROW_MEMBER = common dso_local global i32 0, align 4
@SK_ROW_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @_bt_fix_scankey_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_fix_scankey_strategy(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SK_BT_INDOPTION_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SK_ISNULL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SK_ROW_HEADER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SK_SEARCHNULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %24
  %46 = load i8*, i8** @BTEqualStrategyNumber, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @InvalidOid, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @InvalidOid, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  br label %86

55:                                               ; preds = %24
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SK_SEARCHNOTNULL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %55
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i8*, i8** @BTGreaterStrategyNumber, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %62
  %74 = load i8*, i8** @BTLessStrategyNumber, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i8*, i8** @InvalidOid, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @InvalidOid, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  br label %85

84:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %178

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %45
  store i32 1, i32* %3, align 4
  br label %178

87:                                               ; preds = %2
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @SK_BT_DESC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SK_BT_DESC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @BTCommuteStrategyNumber(i8* %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %99, %92, %87
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SK_ROW_HEADER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %177

118:                                              ; preds = %106
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @DatumGetPointer(i32 %121)
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %124, %struct.TYPE_3__** %7, align 8
  br label %125

125:                                              ; preds = %173, %118
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SK_ROW_MEMBER, align 4
  %130 = and i32 %128, %129
  %131 = call i32 @Assert(i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @SK_BT_INDOPTION_SHIFT, align 4
  %141 = shl i32 %139, %140
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @SK_BT_DESC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %125
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SK_BT_DESC, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %146
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @BTCommuteStrategyNumber(i8* %156)
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %153, %146, %125
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SK_ROW_END, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  br label %176

173:                                              ; preds = %160
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 1
  store %struct.TYPE_3__* %175, %struct.TYPE_3__** %7, align 8
  br label %125

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176, %106
  store i32 1, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %86, %84
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @BTCommuteStrategyNumber(i8*) #1

declare dso_local i32 @DatumGetPointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
