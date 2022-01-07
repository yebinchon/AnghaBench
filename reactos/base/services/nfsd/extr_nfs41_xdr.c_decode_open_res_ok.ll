; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_decode_open_res_ok.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_decode_open_res_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"decode_open_res_ok: delegation type %d not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @decode_open_res_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_open_res_ok(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @xdr_stateid4(i32* %6, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %82

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = call i32 @xdr_change_info4(i32* %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = call i32 @xdr_u_int32_t(i32* %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = call i32 @xdr_bitmap4(i32* %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %82

38:                                               ; preds = %30
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @xdr_enum(i32* %39, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %82

48:                                               ; preds = %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %74 [
    i32 131, label %54
    i32 130, label %56
    i32 129, label %62
    i32 128, label %68
  ]

54:                                               ; preds = %48
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %3, align 4
  br label %82

56:                                               ; preds = %48
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i32 @decode_open_none_delegation4(i32* %57, %struct.TYPE_7__* %60)
  store i32 %61, i32* %3, align 4
  br label %82

62:                                               ; preds = %48
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = call i32 @decode_open_read_delegation4(i32* %63, %struct.TYPE_7__* %66)
  store i32 %67, i32* %3, align 4
  br label %82

68:                                               ; preds = %48
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i32 @decode_open_write_delegation4(i32* %69, %struct.TYPE_7__* %72)
  store i32 %73, i32* %3, align 4
  br label %82

74:                                               ; preds = %48
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @eprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %74, %68, %62, %56, %54, %46, %36, %28, %20, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @xdr_stateid4(i32*, i32) #1

declare dso_local i32 @xdr_change_info4(i32*, i32*) #1

declare dso_local i32 @xdr_u_int32_t(i32*, i32*) #1

declare dso_local i32 @xdr_bitmap4(i32*, i32*) #1

declare dso_local i32 @xdr_enum(i32*, i32*) #1

declare dso_local i32 @decode_open_none_delegation4(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @decode_open_read_delegation4(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @decode_open_write_delegation4(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @eprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
