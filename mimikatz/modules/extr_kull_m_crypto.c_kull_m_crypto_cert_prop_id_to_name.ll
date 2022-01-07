; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_cert_prop_id_to_name.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_cert_prop_id_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@kull_m_crypto_cert_prop_id = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [20 x i32] [i32 67, i32 69, i32 82, i32 84, i32 95, i32 117, i32 110, i32 107, i32 95, i32 102, i32 117, i32 116, i32 117, i32 114, i32 101, i32 95, i32 117, i32 115, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [29 x i32] [i32 67, i32 69, i32 82, i32 84, i32 95, i32 117, i32 110, i32 107, i32 95, i32 54, i32 51, i32 95, i32 109, i32 97, i32 121, i32 98, i32 101, i32 95, i32 102, i32 117, i32 116, i32 117, i32 114, i32 101, i32 95, i32 117, i32 115, i32 101, i32 0], align 4
@CERT_LAST_RESERVED_PROP_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i32] [i32 67, i32 69, i32 82, i32 84, i32 95, i32 114, i32 101, i32 115, i32 101, i32 114, i32 118, i32 101, i32 100, i32 95, i32 112, i32 114, i32 111, i32 112, i32 95, i32 105, i32 100, i32 0], align 4
@CERT_FIRST_USER_PROP_ID = common dso_local global i64 0, align 8
@CERT_LAST_USER_PROP_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i32] [i32 67, i32 69, i32 82, i32 84, i32 95, i32 117, i32 115, i32 101, i32 114, i32 95, i32 112, i32 114, i32 111, i32 112, i32 95, i32 105, i32 100, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kull_m_crypto_cert_prop_id_to_name(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kull_m_crypto_cert_prop_id, align 8
  %8 = call i64 @ARRAYSIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kull_m_crypto_cert_prop_id, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kull_m_crypto_cert_prop_id, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %4, align 8
  br label %28

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %5

28:                                               ; preds = %18, %5
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %2, align 8
  %33 = icmp uge i64 %32, 36
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %2, align 8
  %36 = icmp ule i64 %35, 62
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8* bitcast ([20 x i32]* @.str to i8*), i8** %4, align 8
  br label %62

38:                                               ; preds = %34, %31
  %39 = load i64, i64* %2, align 8
  %40 = icmp eq i64 %39, 63
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* bitcast ([29 x i32]* @.str.1 to i8*), i8** %4, align 8
  br label %61

42:                                               ; preds = %38
  %43 = load i64, i64* %2, align 8
  %44 = icmp uge i64 %43, 116
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @CERT_LAST_RESERVED_PROP_ID, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8* bitcast ([22 x i32]* @.str.2 to i8*), i8** %4, align 8
  br label %60

50:                                               ; preds = %45, %42
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @CERT_FIRST_USER_PROP_ID, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* @CERT_LAST_USER_PROP_ID, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* bitcast ([18 x i32]* @.str.3 to i8*), i8** %4, align 8
  br label %59

59:                                               ; preds = %58, %54, %50
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 5
  ret i8* %65
}

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
