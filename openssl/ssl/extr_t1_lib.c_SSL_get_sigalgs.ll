; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_SSL_get_sigalgs.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_SSL_get_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@NID_undef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_get_sigalgs(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %16, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %17, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %7
  %32 = load i64, i64* %17, align 8
  %33 = load i64, i64* @INT_MAX, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %7
  store i32 0, i32* %8, align 4
  br label %120

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %117

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i64, i64* %17, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %120

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %16, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %16, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %15, align 8
  store i8 %57, i8* %58, align 1
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32*, i32** %16, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %14, align 8
  store i8 %66, i8* %67, align 1
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_10__* @tls1_lookup_sigalg(i32 %70)
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %18, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %76 = icmp ne %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @NID_undef, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = phi i32 [ %80, %77 ], [ %82, %81 ]
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %68
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  br label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @NID_undef, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi i32 [ %95, %92 ], [ %97, %96 ]
  %100 = load i32*, i32** %12, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %86
  %102 = load i32*, i32** %13, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  br label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @NID_undef, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i32 [ %110, %107 ], [ %112, %111 ]
  %115 = load i32*, i32** %13, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %101
  br label %117

117:                                              ; preds = %116, %36
  %118 = load i64, i64* %17, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %44, %35
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_10__* @tls1_lookup_sigalg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
