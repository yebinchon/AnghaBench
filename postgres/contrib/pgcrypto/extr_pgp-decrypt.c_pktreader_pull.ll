; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_pktreader_pull.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_pktreader_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PktData = type { i32, i32 }

@PKT_CONTEXT = common dso_local global i32 0, align 4
@PKT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32**, i32*, i32)* @pktreader_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pktreader_pull(i8* %0, i32* %1, i32 %2, i32** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.PktData*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.PktData*
  store %struct.PktData* %17, %struct.PktData** %15, align 8
  %18 = load %struct.PktData*, %struct.PktData** %15, align 8
  %19 = getelementptr inbounds %struct.PktData, %struct.PktData* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PKT_CONTEXT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32**, i32*** %11, align 8
  %27 = call i32 @pullf_read(i32* %24, i32 %25, i32** %26)
  store i32 %27, i32* %7, align 4
  br label %79

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %50, %28
  %30 = load %struct.PktData*, %struct.PktData** %15, align 8
  %31 = getelementptr inbounds %struct.PktData, %struct.PktData* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.PktData*, %struct.PktData** %15, align 8
  %36 = getelementptr inbounds %struct.PktData, %struct.PktData* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PKT_NORMAL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %79

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.PktData*, %struct.PktData** %15, align 8
  %44 = getelementptr inbounds %struct.PktData, %struct.PktData* %43, i32 0, i32 1
  %45 = call i32 @parse_new_len(i32* %42, i32* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %7, align 4
  br label %79

50:                                               ; preds = %41
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.PktData*, %struct.PktData** %15, align 8
  %53 = getelementptr inbounds %struct.PktData, %struct.PktData* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %29

54:                                               ; preds = %29
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.PktData*, %struct.PktData** %15, align 8
  %57 = getelementptr inbounds %struct.PktData, %struct.PktData* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.PktData*, %struct.PktData** %15, align 8
  %62 = getelementptr inbounds %struct.PktData, %struct.PktData* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32**, i32*** %11, align 8
  %68 = call i32 @pullf_read(i32* %65, i32 %66, i32** %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.PktData*, %struct.PktData** %15, align 8
  %74 = getelementptr inbounds %struct.PktData, %struct.PktData* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %48, %40, %23
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @pullf_read(i32*, i32, i32**) #1

declare dso_local i32 @parse_new_len(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
