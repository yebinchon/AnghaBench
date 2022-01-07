; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_func_decl_list.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_func_decl_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }

@tok = common dso_local global i8 0, align 1
@TOK_EOF = common dso_local global i8 0, align 1
@TOK_ASM1 = common dso_local global i8 0, align 1
@TOK_ASM2 = common dso_local global i8 0, align 1
@TOK_ASM3 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [17 x i8] c"declaration list\00", align 1
@TYPE_DIRECT = common dso_local global i32 0, align 4
@SYM_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"declaration for parameter '%s' but no such parameter\00", align 1
@VT_STORAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"storage class specified for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @func_decl_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @func_decl_list(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %9

9:                                                ; preds = %127, %1
  %10 = call i64 (...) @tcc_nerr()
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load i8, i8* @tok, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 123
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i8, i8* @tok, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 59
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i8, i8* @tok, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 44
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i8, i8* @tok, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @TOK_EOF, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load i8, i8* @tok, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @TOK_ASM1, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i8, i8* @tok, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @TOK_ASM2, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i8, i8* @tok, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @TOK_ASM3, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %44, %46
  br label %48

48:                                               ; preds = %42, %36, %30, %24, %20, %16, %12, %9
  %49 = phi i1 [ false, %36 ], [ false, %30 ], [ false, %24 ], [ false, %20 ], [ false, %16 ], [ false, %12 ], [ false, %9 ], [ %47, %42 ]
  br i1 %49, label %50, label %129

50:                                               ; preds = %48
  %51 = call i32 @parse_btype(%struct.TYPE_10__* %6, i32* %3)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 @expect(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = call i64 @is_enum(%struct.TYPE_10__* %6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call i64 @is_structured(%struct.TYPE_10__* %6)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58, %55
  %62 = load i8, i8* @tok, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 59
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %127

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %125, %66
  %68 = call i64 (...) @tcc_nerr()
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %126

70:                                               ; preds = %67
  %71 = bitcast %struct.TYPE_10__* %7 to i8*
  %72 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = load i32, i32* @TYPE_DIRECT, align 4
  %74 = call i32 @type_decl(%struct.TYPE_10__* %7, i32* %3, i32* %4, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %91, %70
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %5, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SYM_FIELD, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  br label %92

91:                                               ; preds = %81
  br label %76

92:                                               ; preds = %90, %76
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @get_tok_str(i32 %96, i32* null)
  %98 = call i32 @TCC_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VT_STORAGE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @get_tok_str(i32 %106, i32* null)
  %108 = call i32 @TCC_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = call i32 @convert_parameter_type(%struct.TYPE_10__* %7)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = icmp ne %struct.TYPE_9__* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = bitcast %struct.TYPE_10__* %115 to i8*
  %117 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  br label %118

118:                                              ; preds = %113, %109
  %119 = load i8, i8* @tok, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 44
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 (...) @next()
  br label %125

124:                                              ; preds = %118
  br label %126

125:                                              ; preds = %122
  br label %67

126:                                              ; preds = %124, %67
  br label %127

127:                                              ; preds = %126, %65
  %128 = call i32 @skip(i8 signext 59)
  br label %9

129:                                              ; preds = %48
  ret void
}

declare dso_local i64 @tcc_nerr(...) #1

declare dso_local i32 @parse_btype(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @expect(i8*) #1

declare dso_local i64 @is_enum(%struct.TYPE_10__*) #1

declare dso_local i64 @is_structured(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @type_decl(%struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i32 @TCC_ERR(i8*, i32) #1

declare dso_local i32 @get_tok_str(i32, i32*) #1

declare dso_local i32 @convert_parameter_type(%struct.TYPE_10__*) #1

declare dso_local i32 @next(...) #1

declare dso_local i32 @skip(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
