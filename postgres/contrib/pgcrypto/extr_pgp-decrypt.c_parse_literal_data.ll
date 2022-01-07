; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_parse_literal_data.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_parse_literal_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"parse_literal_data: unexpected eof\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"parse_literal_data: data type=%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @parse_literal_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_literal_data(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @GETBYTE(i32* %14, i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @GETBYTE(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %35, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @pullf_read(i32* %24, i32 %25, i32** %11)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %122

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %20

39:                                               ; preds = %34, %20
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %44, i32* %4, align 4
  br label %122

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %48 = call i32 @pullf_read_max(i32* %46, i32 4, i32** %11, i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %53, i32* %4, align 4
  br label %122

54:                                               ; preds = %45
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %56 = call i32 @px_memset(i32* %55, i32 0, i32 4)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 116
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 117
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %64, %61
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 117
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %110
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @pullf_read(i32* %81, i32 32768, i32** %11)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %111

86:                                               ; preds = %80
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @copy_crlf(i32* %97, i32* %98, i32 %99, i32* %13)
  store i32 %100, i32* %10, align 4
  br label %106

101:                                              ; preds = %91, %86
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @mbuf_append(i32* %102, i32* %103, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %111

110:                                              ; preds = %106
  br label %80

111:                                              ; preds = %109, %85
  %112 = load i32, i32* %10, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @mbuf_append(i32* %118, i32* bitcast ([2 x i8]* @.str.2 to i32*), i32 1)
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %117, %114, %111
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %51, %42, %29
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @GETBYTE(i32*, i32) #1

declare dso_local i32 @pullf_read(i32*, i32, i32**) #1

declare dso_local i32 @px_debug(i8*, ...) #1

declare dso_local i32 @pullf_read_max(i32*, i32, i32**, i32*) #1

declare dso_local i32 @px_memset(i32*, i32, i32) #1

declare dso_local i32 @copy_crlf(i32*, i32*, i32, i32*) #1

declare dso_local i32 @mbuf_append(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
