; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclmask_direct.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclmask_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"null ACL\00", align 1
@ACLITEM_ALL_GOPTION_BITS = common dso_local global i32 0, align 4
@ACLMASK_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32, i64)* @aclmask_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aclmask_direct(i32* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @check_acl(i32* %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %100

28:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @ACLITEM_ALL_GOPTION_BITS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ACLITEM_ALL_GOPTION_BITS, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @ACLMASK_ALL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %51, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %100

53:                                               ; preds = %48, %44
  br label %54

54:                                               ; preds = %53, %33, %28
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @ACL_NUM(i32* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call %struct.TYPE_3__* @ACL_DAT(i32* %57)
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %13, align 8
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %95, %54
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %98

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %16, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %63
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @ACLMASK_ALL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %91, label %93

88:                                               ; preds = %73
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %84
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %6, align 4
  br label %100

93:                                               ; preds = %88, %84
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %59

98:                                               ; preds = %59
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %91, %51, %27
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @check_acl(i32*) #1

declare dso_local i32 @ACL_NUM(i32*) #1

declare dso_local %struct.TYPE_3__* @ACL_DAT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
