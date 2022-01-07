; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_base64.c_openvpn_base64_decode.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_base64.c_openvpn_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_chars = common dso_local global i32 0, align 4
@DECODE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openvpn_base64_decode(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %103, %21
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 61
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @base64_chars, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @strchr(i32 %34, i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %28
  %40 = phi i1 [ true, %28 ], [ %38, %33 ]
  br label %41

41:                                               ; preds = %39, %23
  %42 = phi i1 [ false, %23 ], [ %40, %39 ]
  br i1 %42, label %43, label %106

43:                                               ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @token_decode(i8* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = lshr i32 %46, 24
  %48 = and i32 %47, 255
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @DECODE_ERROR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %113

53:                                               ; preds = %43
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp uge i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %113

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %11, align 4
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %12, align 4
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %70, label %85

70:                                               ; preds = %61
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp uge i8* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 -1, i32* %4, align 4
  br label %113

78:                                               ; preds = %73, %70
  %79 = load i32, i32* %11, align 4
  %80 = lshr i32 %79, 8
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  br label %85

85:                                               ; preds = %78, %61
  %86 = load i32, i32* %12, align 4
  %87 = icmp ult i32 %86, 1
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp uge i8* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 -1, i32* %4, align 4
  br label %113

96:                                               ; preds = %91, %88
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  store i8 %99, i8* %100, align 1
  br label %102

102:                                              ; preds = %96, %85
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  store i8* %105, i8** %8, align 8
  br label %23

106:                                              ; preds = %41
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %106, %95, %77, %60, %52
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @token_decode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
