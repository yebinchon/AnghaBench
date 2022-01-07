; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_forin_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_forin_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, i8*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@fdexNameEnsure = common dso_local global i32 0, align 4
@OP_throw_ref = common dso_local global i32 0, align 4
@JS_E_ILLEGAL_ASSIGN = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@OP_int = common dso_local global i32 0, align 4
@DISPID_STARTENUM = common dso_local global i32 0, align 4
@OP_forin = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @compile_forin_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_forin_statement(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %10 = load i32, i32* @FALSE, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %14 = load i32, i32* @FALSE, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call i32 @compile_variable_list(i32* %24, %struct.TYPE_9__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %172

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @alloc_label(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %43, i32* %3, align 4
  br label %172

44:                                               ; preds = %35
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @alloc_label(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %52, i32* %3, align 4
  br label %172

53:                                               ; preds = %44
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @compile_expression(i32* %54, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %172

65:                                               ; preds = %53
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = icmp ne %struct.TYPE_9__* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @fdexNameEnsure, align 4
  %78 = call i32 @emit_identifier_ref(i32* %71, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %172

84:                                               ; preds = %70
  br label %119

85:                                               ; preds = %65
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @is_memberid_expr(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %85
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i32, i32* @fdexNameEnsure, align 4
  %99 = call i32 @compile_memberid_expression(i32* %94, %struct.TYPE_10__* %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @FAILED(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %172

105:                                              ; preds = %93
  br label %118

106:                                              ; preds = %85
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @OP_throw_ref, align 4
  %109 = load i8*, i8** @JS_E_ILLEGAL_ASSIGN, align 8
  %110 = call i32 @push_instr_uint(i32* %107, i32 %108, i8* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @FAILED(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %172

116:                                              ; preds = %106
  %117 = load i32, i32* @S_OK, align 4
  store i32 %117, i32* %3, align 4
  br label %172

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %84
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @OP_int, align 4
  %122 = load i32, i32* @DISPID_STARTENUM, align 4
  %123 = call i32 @push_instr_int(i32* %120, i32 %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @FAILED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %172

129:                                              ; preds = %119
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @label_set_addr(i32* %130, i8* %132)
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* @OP_forin, align 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @push_instr_uint(i32* %134, i32 %135, i8* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i64 @FAILED(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %129
  %143 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %143, i32* %3, align 4
  br label %172

144:                                              ; preds = %129
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @compile_statement(i32* %145, %struct.TYPE_7__* %6, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i64 @FAILED(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %172

155:                                              ; preds = %144
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* @OP_jmp, align 4
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @push_instr_uint(i32* %156, i32 %157, i8* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i64 @FAILED(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %3, align 4
  br label %172

166:                                              ; preds = %155
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @label_set_addr(i32* %167, i8* %169)
  %171 = load i32, i32* @S_OK, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %166, %164, %153, %142, %127, %116, %114, %103, %82, %63, %51, %42, %32
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @compile_variable_list(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @alloc_label(i32*) #1

declare dso_local i32 @compile_expression(i32*, i32, i32) #1

declare dso_local i32 @emit_identifier_ref(i32*, i32, i32) #1

declare dso_local i64 @is_memberid_expr(i32) #1

declare dso_local i32 @compile_memberid_expression(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @push_instr_uint(i32*, i32, i8*) #1

declare dso_local i32 @push_instr_int(i32*, i32, i32) #1

declare dso_local i32 @label_set_addr(i32*, i8*) #1

declare dso_local i32 @compile_statement(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
