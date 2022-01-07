; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_parser.c_ParseIf.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_parser.c_ParseIf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64, i8*, i8*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Cannot allocate memory for Cmd!\0A\00", align 1
@C_IF = common dso_local global i32 0, align 4
@CurrentTokenType = common dso_local global i32 0, align 4
@CurrentToken = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"/I\00", align 1
@IFFLAG_IGNORECASE = common dso_local global i32 0, align 4
@STANDARD_SEPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@IFFLAG_NEGATE = common dso_local global i32 0, align 4
@TOK_NORMAL = common dso_local global i32 0, align 4
@IF_MAX_UNARY = common dso_local global i64 0, align 8
@IfOperatorString = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c",;\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@IF_MAX_COMPARISON = common dso_local global i64 0, align 8
@C_OP_LOWEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* ()* @ParseIf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @ParseIf() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = call %struct.TYPE_10__* @cmd_alloc(i32 48)
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = icmp ne %struct.TYPE_10__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @ParseError()
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %197

10:                                               ; preds = %0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @memset(%struct.TYPE_10__* %11, i32 0, i32 48)
  %13 = load i32, i32* @C_IF, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @CurrentTokenType, align 4
  store i32 %16, i32* %2, align 4
  %17 = load i64*, i64** @CurrentToken, align 8
  %18 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i64 @_tcsicmp(i64* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %10
  %22 = load i32, i32* @IFFLAG_IGNORECASE, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @STANDARD_SEPS, align 4
  %29 = call i32 @ParseToken(i32 0, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %10
  %31 = load i64*, i64** @CurrentToken, align 8
  %32 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i64 @_tcsicmp(i64* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* @IFFLAG_NEGATE, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @STANDARD_SEPS, align 4
  %43 = call i32 @ParseToken(i32 0, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %30
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @TOK_NORMAL, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = call i32 @FreeCommand(%struct.TYPE_10__* %49)
  %51 = call i32 (...) @ParseError()
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %197

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %87, %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IF_MAX_UNARY, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %53
  %61 = load i64*, i64** @CurrentToken, align 8
  %62 = load i32*, i32** @IfOperatorString, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @_tcsicmp(i64* %61, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %60
  %72 = load i32, i32* @STANDARD_SEPS, align 4
  %73 = call i32 @ParseToken(i32 0, i32 %72)
  %74 = load i32, i32* @TOK_NORMAL, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = call i32 @FreeCommand(%struct.TYPE_10__* %77)
  %79 = call i32 (...) @ParseError()
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %197

80:                                               ; preds = %71
  %81 = load i64*, i64** @CurrentToken, align 8
  %82 = call i8* @cmd_dup(i64* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  br label %159

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %53

93:                                               ; preds = %53
  %94 = load i64*, i64** @CurrentToken, align 8
  %95 = call i8* @cmd_dup(i64* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %100 = call i32 @ParseToken(i32 0, i32 %99)
  %101 = load i64*, i64** @CurrentToken, align 8
  %102 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %103 = call i64 @_tcsnicmp(i64* %101, i32 %102, i32 2)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %93
  %106 = load i64*, i64** @CurrentToken, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load i64*, i64** @CurrentToken, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  %113 = call i8* @cmd_dup(i64* %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  br label %159

117:                                              ; preds = %105, %93
  br label %118

118:                                              ; preds = %149, %117
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IF_MAX_COMPARISON, align 8
  %124 = icmp ule i64 %122, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %118
  %126 = load i64*, i64** @CurrentToken, align 8
  %127 = load i32*, i32** @IfOperatorString, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @_tcsicmp(i64* %126, i32 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %125
  %137 = load i32, i32* @STANDARD_SEPS, align 4
  %138 = call i32 @ParseToken(i32 0, i32 %137)
  %139 = load i32, i32* @TOK_NORMAL, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %155

142:                                              ; preds = %136
  %143 = load i64*, i64** @CurrentToken, align 8
  %144 = call i8* @cmd_dup(i64* %143)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  br label %159

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %118

155:                                              ; preds = %141, %118
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = call i32 @FreeCommand(%struct.TYPE_10__* %156)
  %158 = call i32 (...) @ParseError()
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %197

159:                                              ; preds = %142, %110, %80
  %160 = load i32, i32* @C_OP_LOWEST, align 4
  %161 = call i8* @ParseCommandOp(i32 %160)
  %162 = bitcast i8* %161 to %struct.TYPE_9__*
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = icmp eq %struct.TYPE_9__* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = call i32 @FreeCommand(%struct.TYPE_10__* %170)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %197

172:                                              ; preds = %159
  %173 = load i64*, i64** @CurrentToken, align 8
  %174 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %175 = call i64 @_tcsicmp(i64* %173, i32 %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %172
  %178 = load i32, i32* @C_OP_LOWEST, align 4
  %179 = call i8* @ParseCommandOp(i32 %178)
  %180 = bitcast i8* %179 to i32*
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32* %180, i32** %184, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %177
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %193 = call i32 @FreeCommand(%struct.TYPE_10__* %192)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  br label %197

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194, %172
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %196, %struct.TYPE_10__** %1, align 8
  br label %197

197:                                              ; preds = %195, %191, %169, %155, %76, %48, %7
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  ret %struct.TYPE_10__* %198
}

declare dso_local %struct.TYPE_10__* @cmd_alloc(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @ParseError(...) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @_tcsicmp(i64*, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @ParseToken(i32, i32) #1

declare dso_local i32 @FreeCommand(%struct.TYPE_10__*) #1

declare dso_local i8* @cmd_dup(i64*) #1

declare dso_local i64 @_tcsnicmp(i64*, i32, i32) #1

declare dso_local i8* @ParseCommandOp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
