; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pgp_armor_encode.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pgp_armor_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@armor_header = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"overflow - encode estimate too small\00", align 1
@_base64 = common dso_local global i8* null, align 8
@armor_footer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgp_armor_encode(i32* %0, i32 %1, %struct.TYPE_7__* %2, i32 %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @crc24(i32* %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = load i32, i32* @armor_header, align 4
  %22 = call i32 @appendStringInfoString(%struct.TYPE_7__* %20, i32 %21)
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %40, %6
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = load i8**, i8*** %11, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @appendStringInfo(%struct.TYPE_7__* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %44, i8 signext 10)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @pg_base64_enc_len(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @enlargeStringInfo(%struct.TYPE_7__* %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = call i32 @pg_base64_encode(i32* %51, i32 %52, i32* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %43
  %67 = load i32, i32* @FATAL, align 4
  %68 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %43
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 10
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %88, i8 signext 10)
  br label %90

90:                                               ; preds = %87, %69
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %91, i8 signext 61)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = load i8*, i8** @_base64, align 8
  %95 = load i32, i32* %16, align 4
  %96 = lshr i32 %95, 18
  %97 = and i32 %96, 63
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %93, i8 signext %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = load i8*, i8** @_base64, align 8
  %104 = load i32, i32* %16, align 4
  %105 = lshr i32 %104, 12
  %106 = and i32 %105, 63
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %102, i8 signext %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %112 = load i8*, i8** @_base64, align 8
  %113 = load i32, i32* %16, align 4
  %114 = lshr i32 %113, 6
  %115 = and i32 %114, 63
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %111, i8 signext %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %121 = load i8*, i8** @_base64, align 8
  %122 = load i32, i32* %16, align 4
  %123 = and i32 %122, 63
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %120, i8 signext %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = load i32, i32* @armor_footer, align 4
  %130 = call i32 @appendStringInfoString(%struct.TYPE_7__* %128, i32 %129)
  ret void
}

declare dso_local i32 @crc24(i32*, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i8*, i8*, i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @pg_base64_enc_len(i32) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pg_base64_encode(i32*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
