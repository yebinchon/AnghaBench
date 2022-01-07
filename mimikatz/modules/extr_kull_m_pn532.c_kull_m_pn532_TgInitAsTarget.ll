; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pn532.c_kull_m_pn532_TgInitAsTarget.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pn532.c_kull_m_pn532_TgInitAsTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.kull_m_pn532_TgInitAsTarget.dataIn = private unnamed_addr constant [37 x i32] [i32 0, i32 4, i32 0, i32 17, i32 34, i32 51, i32 8, i32 1, i32 254, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119, i32 136, i32 153, i32 170, i32 187, i32 204, i32 221, i32 238, i32 255, i32 255, i32 255, i32 0, i32 17, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119, i32 136, i32 153, i32 0, i32 0], align 16
@PN532_MAX_LEN = common dso_local global i32 0, align 4
@PN532_CMD_TgInitAsTarget = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i32] [i32 70, i32 114, i32 97, i32 109, i32 105, i32 110, i32 103, i32 32, i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@TgInitMode = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [2 x i32] [i32 63, i32 0], align 4
@.str.2 = private unnamed_addr constant [26 x i32] [i32 68, i32 69, i32 80, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 121, i32 101, i32 115, i32 0], align 4
@.str.4 = private unnamed_addr constant [3 x i32] [i32 110, i32 111, i32 0], align 4
@.str.5 = private unnamed_addr constant [26 x i32] [i32 73, i32 83, i32 79, i32 47, i32 73, i32 69, i32 67, i32 32, i32 49, i32 52, i32 52, i32 52, i32 51, i32 45, i32 52, i32 32, i32 80, i32 73, i32 67, i32 67, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [27 x i32] [i32 66, i32 97, i32 117, i32 100, i32 114, i32 97, i32 116, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 104, i32 117, i32 10, i32 0], align 4
@TgInitBaudrate = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [23 x i32] [i32 73, i32 110, i32 105, i32 116, i32 105, i32 97, i32 116, i32 111, i32 114, i32 67, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_pn532_TgInitAsTarget(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [37 x i32], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = bitcast [37 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([37 x i32]* @__const.kull_m_pn532_TgInitAsTarget.dataIn to i8*), i64 148, i1 false)
  %8 = load i32, i32* @PN532_MAX_LEN, align 4
  %9 = sub nsw i32 %8, 2
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = mul nuw i64 4, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @PN532_CMD_TgInitAsTarget, align 4
  %17 = getelementptr inbounds [37 x i32], [37 x i32]* %3, i64 0, i64 0
  %18 = call i64 @kull_m_pn532_sendrecv(i32 %15, i32 %16, i32* %17, i32 148, i32* %12, i32* %6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %85

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @kull_m_pn532_TgResponseToInitiator(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %20
  %26 = getelementptr inbounds i32, i32* %12, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = and i32 %27, 3
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i8**, i8*** @TgInitMode, align 8
  %32 = getelementptr inbounds i32, i32* %12, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = and i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %31, i64 %35
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %30
  %40 = phi i8* [ %37, %30 ], [ bitcast ([2 x i32]* @.str.1 to i8*), %38 ]
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str to i8*), i8* %40)
  %42 = getelementptr inbounds i32, i32* %12, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = and i32 %43, 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.4, i64 0, i64 0)
  %48 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.2 to i8*), i32* %47)
  %49 = getelementptr inbounds i32, i32* %12, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = and i32 %50, 8
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.4, i64 0, i64 0)
  %55 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.5 to i8*), i32* %54)
  %56 = getelementptr inbounds i32, i32* %12, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = and i32 %57, 112
  %59 = ashr i32 %58, 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %70

61:                                               ; preds = %39
  %62 = load i32*, i32** @TgInitBaudrate, align 8
  %63 = getelementptr inbounds i32, i32* %12, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = and i32 %64, 112
  %66 = ashr i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %39
  br label %71

71:                                               ; preds = %70, %61
  %72 = phi i32 [ %69, %61 ], [ 0, %70 ]
  %73 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.6 to i8*), i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.7 to i8*))
  %78 = getelementptr inbounds i32, i32* %12, i64 1
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @kull_m_string_wprintf_hex(i32* %78, i32 %80, i32 1)
  %82 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.8 to i8*))
  br label %83

83:                                               ; preds = %76, %71
  br label %84

84:                                               ; preds = %83, %20
  br label %85

85:                                               ; preds = %84, %1
  %86 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @kull_m_pn532_sendrecv(i32, i32, i32*, i32, i32*, i32*) #3

declare dso_local i32 @kull_m_pn532_TgResponseToInitiator(i32) #3

declare dso_local i32 @kprintf(i8*, ...) #3

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
