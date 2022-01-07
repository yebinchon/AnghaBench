; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_ocb.c_aes_ocb_block_final.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_ocb.c_aes_ocb_block_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@IV_STATE_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64*, i64)* @aes_ocb_block_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_ocb_block_final(i8* %0, i8* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %10, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %19 = call i32 @update_iv(%struct.TYPE_9__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %100

22:                                               ; preds = %17
  %23 = load i64*, i64** %8, align 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @aes_generic_ocb_cipher(%struct.TYPE_9__* %29, i32 %32, i8* %33, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %100

40:                                               ; preds = %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %22
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @aes_generic_ocb_setaad(%struct.TYPE_9__* %53, i32 %56, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %100

63:                                               ; preds = %52
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @aes_generic_ocb_gettag(%struct.TYPE_9__* %73, i32 %76, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %100

83:                                               ; preds = %72
  br label %96

84:                                               ; preds = %66
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %100

90:                                               ; preds = %84
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = call i32 @aes_generic_ocb_final(%struct.TYPE_9__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %100

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i32, i32* @IV_STATE_FINISHED, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %94, %89, %82, %62, %39, %21
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @update_iv(%struct.TYPE_9__*) #1

declare dso_local i32 @aes_generic_ocb_cipher(%struct.TYPE_9__*, i32, i8*, i64) #1

declare dso_local i32 @aes_generic_ocb_setaad(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @aes_generic_ocb_gettag(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @aes_generic_ocb_final(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
