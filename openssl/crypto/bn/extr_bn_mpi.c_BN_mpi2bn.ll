; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mpi.c_BN_mpi2bn.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mpi.c_BN_mpi2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }

@BN_F_BN_MPI2BN = common dso_local global i32 0, align 4
@BN_R_INVALID_LENGTH = common dso_local global i32 0, align 4
@BN_R_ENCODING_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @BN_mpi2bn(i8* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @BN_F_BN_MPI2BN, align 4
  %15 = load i32, i32* @BN_R_INVALID_LENGTH, align 4
  %16 = call i32 @BNerr(i32 %14, i32 %15)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %110

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = shl i64 %21, 24
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = shl i64 %26, 16
  %28 = or i64 %22, %27
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = or i64 %28, %34
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = or i64 %35, %40
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %17
  %48 = load i32, i32* @BN_F_BN_MPI2BN, align 4
  %49 = load i32, i32* @BN_R_ENCODING_ERROR, align 4
  %50 = call i32 @BNerr(i32 %48, i32 %49)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %110

51:                                               ; preds = %17
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = icmp eq %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call %struct.TYPE_10__* (...) @BN_new()
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %10, align 8
  br label %58

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %10, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = icmp eq %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %110

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %4, align 8
  br label %110

71:                                               ; preds = %62
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 128
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %71
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %8, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = call i32* @BN_bin2bn(i8* %81, i32 %83, %struct.TYPE_10__* %84)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = icmp eq %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = call i32 @BN_free(%struct.TYPE_10__* %91)
  br label %93

93:                                               ; preds = %90, %87
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %110

94:                                               ; preds = %80
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = call i64 @BN_num_bits(%struct.TYPE_10__* %102)
  %104 = sub nsw i64 %103, 1
  %105 = call i32 @BN_clear_bit(%struct.TYPE_10__* %101, i64 %104)
  br label %106

106:                                              ; preds = %100, %94
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = call i32 @bn_check_top(%struct.TYPE_10__* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %4, align 8
  br label %110

110:                                              ; preds = %106, %93, %65, %61, %47, %13
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %111
}

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local %struct.TYPE_10__* @BN_new(...) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @BN_free(%struct.TYPE_10__*) #1

declare dso_local i32 @BN_clear_bit(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @BN_num_bits(%struct.TYPE_10__*) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
