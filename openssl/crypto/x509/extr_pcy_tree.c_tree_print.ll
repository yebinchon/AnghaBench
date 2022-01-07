; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_pcy_tree.c_tree_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_pcy_tree.c_tree_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"Level print after %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Printing Up to Level %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Level %ld, flags = %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"  Flags: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_12__*, %struct.TYPE_14__*)* @tree_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_print(i32* %0, i8* %1, %struct.TYPE_12__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i64 %21
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %8, align 8
  br label %26

23:                                               ; preds = %4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 1
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %8, align 8
  br label %26

26:                                               ; preds = %23, %14
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = ptrtoint %struct.TYPE_14__* %31 to i64
  %36 = ptrtoint %struct.TYPE_14__* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 16
  %39 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %9, align 8
  br label %43

43:                                               ; preds = %103, %26
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = icmp ne %struct.TYPE_14__* %44, %45
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = ptrtoint %struct.TYPE_14__* %49 to i64
  %54 = ptrtoint %struct.TYPE_14__* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 16
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %56, i32 %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %88, %47
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sk_X509_POLICY_NODE_num(i32 %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call %struct.TYPE_13__* @sk_X509_POLICY_NODE_value(i32 %71, i32 %72)
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %11, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %76 = call i32 @X509_POLICY_NODE_print(i32* %74, %struct.TYPE_13__* %75, i32 2)
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %80 = call i32 @expected_print(i32* %77, %struct.TYPE_14__* %78, %struct.TYPE_13__* %79, i32 2)
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %68
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %61

91:                                               ; preds = %61
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = icmp ne %struct.TYPE_13__* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = call i32 @X509_POLICY_NODE_print(i32* %97, %struct.TYPE_13__* %100, i32 2)
  br label %102

102:                                              ; preds = %96, %91
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 1
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %9, align 8
  br label %43

106:                                              ; preds = %43
  ret void
}

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @sk_X509_POLICY_NODE_num(i32) #1

declare dso_local %struct.TYPE_13__* @sk_X509_POLICY_NODE_value(i32, i32) #1

declare dso_local i32 @X509_POLICY_NODE_print(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @expected_print(i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
