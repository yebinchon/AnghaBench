; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_do_dsa_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_do_dsa_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"Private-Key\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Public-Key\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DSA-Parameters\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s: (%d bit)\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Public-Key: (%d bit)\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"priv:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pub: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"P:   \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Q:   \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"G:   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32)* @do_dsa_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dsa_print(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @BN_num_bits(i32* %21)
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %18, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  br label %31

30:                                               ; preds = %23
  store i32* null, i32** %11, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  br label %39

38:                                               ; preds = %31
  store i32* null, i32** %12, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %48

47:                                               ; preds = %43
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIO_indent(i32* %53, i32 %54, i32 128)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %118

58:                                               ; preds = %52
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @BN_num_bits(i32* %63)
  %65 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 %64)
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %118

68:                                               ; preds = %58
  br label %76

69:                                               ; preds = %49
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %118

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ASN1_bn_print(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %78, i32* null, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %118

83:                                               ; preds = %76
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ASN1_bn_print(i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %85, i32* null, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %118

90:                                               ; preds = %83
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @ASN1_bn_print(i32* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %94, i32* null, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %118

99:                                               ; preds = %90
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ASN1_bn_print(i32* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %103, i32* null, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  br label %118

108:                                              ; preds = %99
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @ASN1_bn_print(i32* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %112, i32* null, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %118

117:                                              ; preds = %108
  store i32 1, i32* %9, align 4
  br label %118

118:                                              ; preds = %117, %116, %107, %98, %89, %82, %74, %67, %57
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BIO_indent(i32*, i32, i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @ASN1_bn_print(i32*, i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
