; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_node_cp_len.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_node_cp_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@VARHDRSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*)* @gbt_var_node_cp_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gbt_var_node_cp_len(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @gbt_var_key_readable(i32* %14)
  %16 = bitcast %struct.TYPE_6__* %6 to i64*
  store i64 %15, i64* %16, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @VARSIZE(i32 %18)
  %20 = load i64, i64* @VARHDRSZ, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @VARSIZE(i32 %23)
  %25 = load i64, i64* @VARHDRSZ, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @Min(i64 %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @VARDATA(i32 %31)
  store i8* %32, i8** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @VARDATA(i32 %34)
  store i8* %35, i8** %13, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %92

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %81, %39
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = call i64 @pg_mblen(i8* %53)
  store i64 %54, i64* %8, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i64 @pg_mblen(i8* %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %3, align 8
  br label %92

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %49, %44
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8*, i8** %13, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = sub nsw i64 %75, %76
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %3, align 8
  br label %92

79:                                               ; preds = %69
  %80 = load i64, i64* %7, align 8
  store i64 %80, i64* %3, align 8
  br label %92

81:                                               ; preds = %61
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %13, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %8, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %40

90:                                               ; preds = %40
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %90, %79, %74, %58, %38
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i64 @gbt_var_key_readable(i32*) #1

declare dso_local i64 @VARSIZE(i32) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i8* @VARDATA(i32) #1

declare dso_local i64 @pg_mblen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
