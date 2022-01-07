; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_avr_custom_des.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_avr_custom_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"hf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"deskey\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@UT32_MAX = common dso_local global i32 0, align 4
@desctx = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @avr_custom_des to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr_custom_des(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %15, %1
  store i32 0, i32* %2, align 4
  br label %116

28:                                               ; preds = %20
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @__esil_pop_argument(%struct.TYPE_9__* %29, i32* %7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %116

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call i32 @r_anal_esil_reg_read(%struct.TYPE_9__* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %5, i32* null)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call i32 @r_anal_esil_reg_read(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32* null)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = call i32 @r_anal_esil_reg_read(%struct.TYPE_9__* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %6, i32* null)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @UT32_MAX, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @UT32_MAX, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  br label %55

55:                                               ; preds = %53, %33
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %55
  %59 = call i32 @r_des_permute_key(i32* %8, i32* %9)
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %74, %58
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 16
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 2), align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 1), align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @r_des_round_key(i32 %64, i32* %68, i32* %72, i32* %8, i32* %9)
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %60

77:                                               ; preds = %60
  %78 = call i32 @r_des_permute_block0(i32* %10, i32* %11)
  br label %79

79:                                               ; preds = %77, %55
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 2), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 1), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @r_des_round(i32* %10, i32* %11, i32* %86, i32* %90)
  br label %104

92:                                               ; preds = %79
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 2), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  %95 = sub nsw i32 15, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 1), align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  %100 = sub nsw i32 15, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = call i32 @r_des_round(i32* %10, i32* %11, i32* %97, i32* %102)
  br label %104

104:                                              ; preds = %92, %82
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  %106 = icmp eq i32 %105, 15
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @r_des_permute_block1(i32* %11, i32* %10)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  br label %112

109:                                              ; preds = %104
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @desctx, i32 0, i32 0), align 8
  br label %112

112:                                              ; preds = %109, %107
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @r_anal_esil_reg_write(%struct.TYPE_9__* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  store i32 1, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %32, %27
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @__esil_pop_argument(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @r_anal_esil_reg_read(%struct.TYPE_9__*, i8*, i32*, i32*) #1

declare dso_local i32 @r_des_permute_key(i32*, i32*) #1

declare dso_local i32 @r_des_round_key(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @r_des_permute_block0(i32*, i32*) #1

declare dso_local i32 @r_des_round(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @r_des_permute_block1(i32*, i32*) #1

declare dso_local i32 @r_anal_esil_reg_write(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
