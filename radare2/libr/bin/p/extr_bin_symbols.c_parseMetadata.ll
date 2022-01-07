; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseMetadata.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @parseMetadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseMetadata(%struct.TYPE_3__* noalias sret %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %1, i32** %4, align 8
  store i32 %2, i32* %5, align 4
  %11 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 44, i1 false)
  %12 = bitcast [256 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 1024, i1 false)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %16 = call i32 @r_buf_read_at(i32* %13, i32 %14, i32* %15, i32 1024)
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %20 = call i32 @r_read_le32(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  %25 = call i32 @typeString(i32 %23, i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = call i32 @r_read_le32(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @subtypeString(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = call i32 @r_read_le32(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = call i32 @r_read_le32(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  store i32 16, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @parseSegments(i32* %43, i32 %49, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 32
  %57 = add nsw i32 %56, 120
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %60, %62
  %64 = call i32 @r_buf_read_at(i32* %59, i32 %63, i32* %8, i32 4)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %66, %68
  %70 = add nsw i32 %69, 4
  %71 = call i32 @r_buf_read_at(i32* %65, i32 %70, i32* %9, i32 4)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %73, %75
  %77 = add nsw i32 %76, 8
  %78 = call i32 @r_buf_read_at(i32* %72, i32 %77, i32* %10, i32 4)
  %79 = call i32 @r_read_le32(i32* %10)
  %80 = icmp ne i32 %79, -1582159078
  br i1 %80, label %81, label %85

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 8
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #2

declare dso_local i32 @r_read_le32(i32*) #2

declare dso_local i32 @typeString(i32, i32*) #2

declare dso_local i32 @subtypeString(i32) #2

declare dso_local i32 @parseSegments(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
