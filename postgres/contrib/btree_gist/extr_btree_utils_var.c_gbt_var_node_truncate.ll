; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_node_truncate.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_node_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VARHDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32*)* @gbt_var_node_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gbt_var_node_truncate(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @gbt_var_key_readable(i8* %13)
  %15 = bitcast %struct.TYPE_3__* %8 to i64*
  store i64 %14, i64* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VARSIZE(i32 %17)
  %19 = load i32, i32* @VARHDRSZ, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @VARSIZE(i32 %22)
  %24 = load i32, i32* @VARHDRSZ, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @Min(i32 %26, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @Min(i32 %30, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @VARHDRSZ, align 4
  %35 = mul nsw i32 2, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @VARHDRSZ, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @INTALIGN(i32 %38)
  %40 = add nsw i32 %35, %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @palloc0(i32 %43)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @SET_VARSIZE(i8* %46, i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @VARDATA(i8* %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @VARHDRSZ, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @memcpy(i8* %50, i32 %52, i32 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @VARDATA(i8* %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @VARHDRSZ, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @SET_VARSIZE(i8* %58, i32 %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @VARDATA(i8* %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @VARHDRSZ, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @INTALIGN(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @VARHDRSZ, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @memcpy(i8* %71, i32 %73, i32 %76)
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @VARHDRSZ, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @SET_VARSIZE(i8* %78, i32 %81)
  %83 = load i8*, i8** %7, align 8
  ret i8* %83
}

declare dso_local i64 @gbt_var_key_readable(i8*) #1

declare dso_local i32 @VARSIZE(i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @INTALIGN(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @SET_VARSIZE(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @VARDATA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
