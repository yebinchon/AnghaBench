; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclmembers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclmembers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ACL_ID_PUBLIC = common dso_local global i64 0, align 8
@oid_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aclmembers(i32* %0, i64** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i64** %1, i64*** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ACL_NUM(i32* %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %2
  %18 = load i64**, i64*** %5, align 8
  store i64* null, i64** %18, align 8
  store i32 0, i32* %3, align 4
  br label %85

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @check_acl(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ACL_NUM(i32* %22)
  %24 = mul nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64* @palloc(i32 %27)
  store i64* %28, i64** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call %struct.TYPE_3__* @ACL_DAT(i32* %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %71, %19
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ACL_NUM(i32* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %10, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ACL_ID_PUBLIC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  store i64 %49, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %36
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ACL_ID_PUBLIC, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  store i64 %64, i64* %69, align 8
  br label %70

70:                                               ; preds = %61, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %31

74:                                               ; preds = %31
  %75 = load i64*, i64** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @oid_cmp, align 4
  %78 = call i32 @qsort(i64* %75, i32 %76, i32 8, i32 %77)
  %79 = load i64*, i64** %6, align 8
  %80 = load i64**, i64*** %5, align 8
  store i64* %79, i64** %80, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @oid_cmp, align 4
  %84 = call i32 @qunique(i64* %81, i32 %82, i32 8, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %74, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ACL_NUM(i32*) #1

declare dso_local i32 @check_acl(i32*) #1

declare dso_local i64* @palloc(i32) #1

declare dso_local %struct.TYPE_3__* @ACL_DAT(i32*) #1

declare dso_local i32 @qsort(i64*, i32, i32, i32) #1

declare dso_local i32 @qunique(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
