; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_match_value.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_match_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NN_WS_HANDSHAKE_NOMATCH = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i8**, i64*)* @nn_ws_match_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_ws_match_value(i8* %0, i8** %1, i32 %2, i32 %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %18, %6
  %23 = phi i1 [ false, %6 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @nn_assert(i32 %24)
  %26 = load i8**, i8*** %9, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %14, align 8
  %28 = load i8**, i8*** %12, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i8**, i8*** %12, align 8
  store i8* null, i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %22
  %33 = load i64*, i64** %13, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64*, i64** %13, align 8
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @strstr(i8* %38, i8* %39)
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8**, i8*** %9, align 8
  store i8* %48, i8** %49, align 8
  br label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @NN_WS_HANDSHAKE_NOMATCH, align 4
  store i32 %51, i32* %7, align 4
  br label %115

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i8*, i8** %14, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = icmp ult i8* %62, %63
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i1 [ false, %56 ], [ %64, %61 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %14, align 8
  br label %56

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i8**, i8*** %12, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %14, align 8
  %76 = load i8**, i8*** %12, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  store i32 %82, i32* %7, align 4
  br label %115

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %99, %86
  %88 = load i8*, i8** %15, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i8*, i8** %14, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = icmp ult i8* %94, %95
  br label %97

97:                                               ; preds = %93, %87
  %98 = phi i1 [ false, %87 ], [ %96, %93 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i8*, i8** %15, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 -1
  store i8* %101, i8** %15, align 8
  br label %87

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %83
  %104 = load i64*, i64** %13, align 8
  %105 = icmp ne i64* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i8*, i8** %15, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = load i64*, i64** %13, align 8
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %113, %81, %50
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
