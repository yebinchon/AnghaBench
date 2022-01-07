; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseHeader.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i8*, i32*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @parseHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseHeader(%struct.TYPE_3__* noalias sret %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca [64 x i32], align 16
  %5 = alloca i32, align 4
  store i32* %1, i32** %3, align 8
  %6 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 64, i1 false)
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %9 = call i32 @r_buf_read_at(i32* %7, i32 0, i32* %8, i32 256)
  %10 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %11 = call i8* @r_read_le32(i32* %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = call i8* @r_read_le32(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, -16646398
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %37, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 24, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %23

40:                                               ; preds = %23
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %42 = getelementptr inbounds i32, i32* %41, i64 40
  %43 = call i8* @r_read_le16(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %46 = getelementptr inbounds i32, i32* %45, i64 44
  %47 = call i8* @r_read_le16(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 46
  %51 = call i8* @r_read_le16(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 64, i32* %53, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #2

declare dso_local i8* @r_read_le32(i32*) #2

declare dso_local i8* @r_read_le16(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
