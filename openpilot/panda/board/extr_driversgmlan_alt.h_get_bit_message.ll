; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversgmlan_alt.h_get_bit_message.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversgmlan_alt.h_get_bit_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@MAX_BITS_CAN_PACKET = common dso_local global i32 0, align 4
@__const.get_bit_message.footer = private unnamed_addr constant [13 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_bit_message(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [13 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %12 = load i32, i32* @MAX_BITS_CAN_PACKET, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = bitcast [13 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.get_bit_message.footer, i32 0, i32 0), i64 13, i1 false)
  store i32 0, i32* %8, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 15
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @append_int(i8* %15, i32 %21, i8 zeroext 0, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 21
  %34 = trunc i32 %33 to i8
  %35 = call i32 @append_int(i8* %15, i32 %29, i8 zeroext %34, i32 11)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @append_int(i8* %15, i32 %36, i8 zeroext 3, i32 2)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 3
  %43 = and i32 %42, 262143
  %44 = trunc i32 %43 to i8
  %45 = call i32 @append_int(i8* %15, i32 %38, i8 zeroext %44, i32 18)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @append_int(i8* %15, i32 %46, i8 zeroext 0, i32 3)
  store i32 %47, i32* %8, align 4
  br label %58

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 21
  %54 = trunc i32 %53 to i8
  %55 = call i32 @append_int(i8* %15, i32 %49, i8 zeroext %54, i32 11)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @append_int(i8* %15, i32 %56, i8 zeroext 0, i32 3)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %48, %28
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = trunc i32 %60 to i8
  %62 = call i32 @append_int(i8* %15, i32 %59, i8 zeroext %61, i32 4)
  store i32 %62, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %78, %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to i8*
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %11, align 1
  %75 = load i32, i32* %8, align 4
  %76 = load i8, i8* %11, align 1
  %77 = call i32 @append_int(i8* %15, i32 %75, i8 zeroext %76, i32 8)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @append_crc(i8* %15, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @do_bitstuff(i8* %84, i8* %15, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %90 = call i32 @append_bits(i8* %87, i32 %88, i8* %89, i32 13)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @append_int(i8*, i32, i8 zeroext, i32) #3

declare dso_local i32 @append_crc(i8*, i32) #3

declare dso_local i32 @do_bitstuff(i8*, i8*, i32) #3

declare dso_local i32 @append_bits(i8*, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
