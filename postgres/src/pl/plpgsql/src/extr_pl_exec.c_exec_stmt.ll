; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)* }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 }

@plpgsql_plugin_ptr = common dso_local global %struct.TYPE_40__** null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unrecognized cmd_type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)* @exec_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt(%struct.TYPE_39__* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca %struct.TYPE_39__*, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %3, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  store %struct.TYPE_38__* %9, %struct.TYPE_38__** %5, align 8
  %10 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %11 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  store %struct.TYPE_38__* %10, %struct.TYPE_38__** %12, align 8
  %13 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @plpgsql_plugin_ptr, align 8
  %14 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %15 = icmp ne %struct.TYPE_40__* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @plpgsql_plugin_ptr, align 8
  %18 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 1
  %20 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)** %19, align 8
  %21 = icmp ne i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @plpgsql_plugin_ptr, align 8
  %24 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)** %25, align 8
  %27 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %29 = call i32 %26(%struct.TYPE_39__* %27, %struct.TYPE_38__* %28)
  br label %30

30:                                               ; preds = %22, %16, %2
  %31 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %175 [
    i32 153, label %35
    i32 154, label %40
    i32 135, label %45
    i32 152, label %50
    i32 139, label %55
    i32 138, label %60
    i32 151, label %65
    i32 137, label %70
    i32 128, label %75
    i32 141, label %80
    i32 140, label %85
    i32 143, label %90
    i32 142, label %95
    i32 145, label %100
    i32 133, label %105
    i32 132, label %110
    i32 131, label %115
    i32 134, label %120
    i32 155, label %125
    i32 146, label %130
    i32 148, label %135
    i32 147, label %140
    i32 136, label %145
    i32 144, label %150
    i32 150, label %155
    i32 149, label %160
    i32 130, label %165
    i32 129, label %170
  ]

35:                                               ; preds = %30
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %38 = bitcast %struct.TYPE_38__* %37 to i32*
  %39 = call i32 @exec_stmt_block(%struct.TYPE_39__* %36, i32* %38)
  store i32 %39, i32* %6, align 4
  br label %184

40:                                               ; preds = %30
  %41 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %43 = bitcast %struct.TYPE_38__* %42 to i32*
  %44 = call i32 @exec_stmt_assign(%struct.TYPE_39__* %41, i32* %43)
  store i32 %44, i32* %6, align 4
  br label %184

45:                                               ; preds = %30
  %46 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %48 = bitcast %struct.TYPE_38__* %47 to i32*
  %49 = call i32 @exec_stmt_perform(%struct.TYPE_39__* %46, i32* %48)
  store i32 %49, i32* %6, align 4
  br label %184

50:                                               ; preds = %30
  %51 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %53 = bitcast %struct.TYPE_38__* %52 to i32*
  %54 = call i32 @exec_stmt_call(%struct.TYPE_39__* %51, i32* %53)
  store i32 %54, i32* %6, align 4
  br label %184

55:                                               ; preds = %30
  %56 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %57 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %58 = bitcast %struct.TYPE_38__* %57 to i32*
  %59 = call i32 @exec_stmt_getdiag(%struct.TYPE_39__* %56, i32* %58)
  store i32 %59, i32* %6, align 4
  br label %184

60:                                               ; preds = %30
  %61 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %62 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %63 = bitcast %struct.TYPE_38__* %62 to i32*
  %64 = call i32 @exec_stmt_if(%struct.TYPE_39__* %61, i32* %63)
  store i32 %64, i32* %6, align 4
  br label %184

65:                                               ; preds = %30
  %66 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %67 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %68 = bitcast %struct.TYPE_38__* %67 to i32*
  %69 = call i32 @exec_stmt_case(%struct.TYPE_39__* %66, i32* %68)
  store i32 %69, i32* %6, align 4
  br label %184

70:                                               ; preds = %30
  %71 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %72 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %73 = bitcast %struct.TYPE_38__* %72 to i32*
  %74 = call i32 @exec_stmt_loop(%struct.TYPE_39__* %71, i32* %73)
  store i32 %74, i32* %6, align 4
  br label %184

75:                                               ; preds = %30
  %76 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %78 = bitcast %struct.TYPE_38__* %77 to i32*
  %79 = call i32 @exec_stmt_while(%struct.TYPE_39__* %76, i32* %78)
  store i32 %79, i32* %6, align 4
  br label %184

80:                                               ; preds = %30
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %82 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %83 = bitcast %struct.TYPE_38__* %82 to i32*
  %84 = call i32 @exec_stmt_fori(%struct.TYPE_39__* %81, i32* %83)
  store i32 %84, i32* %6, align 4
  br label %184

85:                                               ; preds = %30
  %86 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %87 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %88 = bitcast %struct.TYPE_38__* %87 to i32*
  %89 = call i32 @exec_stmt_fors(%struct.TYPE_39__* %86, i32* %88)
  store i32 %89, i32* %6, align 4
  br label %184

90:                                               ; preds = %30
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %93 = bitcast %struct.TYPE_38__* %92 to i32*
  %94 = call i32 @exec_stmt_forc(%struct.TYPE_39__* %91, i32* %93)
  store i32 %94, i32* %6, align 4
  br label %184

95:                                               ; preds = %30
  %96 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %98 = bitcast %struct.TYPE_38__* %97 to i32*
  %99 = call i32 @exec_stmt_foreach_a(%struct.TYPE_39__* %96, i32* %98)
  store i32 %99, i32* %6, align 4
  br label %184

100:                                              ; preds = %30
  %101 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %102 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %103 = bitcast %struct.TYPE_38__* %102 to i32*
  %104 = call i32 @exec_stmt_exit(%struct.TYPE_39__* %101, i32* %103)
  store i32 %104, i32* %6, align 4
  br label %184

105:                                              ; preds = %30
  %106 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %108 = bitcast %struct.TYPE_38__* %107 to i32*
  %109 = call i32 @exec_stmt_return(%struct.TYPE_39__* %106, i32* %108)
  store i32 %109, i32* %6, align 4
  br label %184

110:                                              ; preds = %30
  %111 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %112 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %113 = bitcast %struct.TYPE_38__* %112 to i32*
  %114 = call i32 @exec_stmt_return_next(%struct.TYPE_39__* %111, i32* %113)
  store i32 %114, i32* %6, align 4
  br label %184

115:                                              ; preds = %30
  %116 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %117 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %118 = bitcast %struct.TYPE_38__* %117 to i32*
  %119 = call i32 @exec_stmt_return_query(%struct.TYPE_39__* %116, i32* %118)
  store i32 %119, i32* %6, align 4
  br label %184

120:                                              ; preds = %30
  %121 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %123 = bitcast %struct.TYPE_38__* %122 to i32*
  %124 = call i32 @exec_stmt_raise(%struct.TYPE_39__* %121, i32* %123)
  store i32 %124, i32* %6, align 4
  br label %184

125:                                              ; preds = %30
  %126 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %128 = bitcast %struct.TYPE_38__* %127 to i32*
  %129 = call i32 @exec_stmt_assert(%struct.TYPE_39__* %126, i32* %128)
  store i32 %129, i32* %6, align 4
  br label %184

130:                                              ; preds = %30
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %132 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %133 = bitcast %struct.TYPE_38__* %132 to i32*
  %134 = call i32 @exec_stmt_execsql(%struct.TYPE_39__* %131, i32* %133)
  store i32 %134, i32* %6, align 4
  br label %184

135:                                              ; preds = %30
  %136 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %138 = bitcast %struct.TYPE_38__* %137 to i32*
  %139 = call i32 @exec_stmt_dynexecute(%struct.TYPE_39__* %136, i32* %138)
  store i32 %139, i32* %6, align 4
  br label %184

140:                                              ; preds = %30
  %141 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %143 = bitcast %struct.TYPE_38__* %142 to i32*
  %144 = call i32 @exec_stmt_dynfors(%struct.TYPE_39__* %141, i32* %143)
  store i32 %144, i32* %6, align 4
  br label %184

145:                                              ; preds = %30
  %146 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %147 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %148 = bitcast %struct.TYPE_38__* %147 to i32*
  %149 = call i32 @exec_stmt_open(%struct.TYPE_39__* %146, i32* %148)
  store i32 %149, i32* %6, align 4
  br label %184

150:                                              ; preds = %30
  %151 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %153 = bitcast %struct.TYPE_38__* %152 to i32*
  %154 = call i32 @exec_stmt_fetch(%struct.TYPE_39__* %151, i32* %153)
  store i32 %154, i32* %6, align 4
  br label %184

155:                                              ; preds = %30
  %156 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %157 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %158 = bitcast %struct.TYPE_38__* %157 to i32*
  %159 = call i32 @exec_stmt_close(%struct.TYPE_39__* %156, i32* %158)
  store i32 %159, i32* %6, align 4
  br label %184

160:                                              ; preds = %30
  %161 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %162 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %163 = bitcast %struct.TYPE_38__* %162 to i32*
  %164 = call i32 @exec_stmt_commit(%struct.TYPE_39__* %161, i32* %163)
  store i32 %164, i32* %6, align 4
  br label %184

165:                                              ; preds = %30
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %167 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %168 = bitcast %struct.TYPE_38__* %167 to i32*
  %169 = call i32 @exec_stmt_rollback(%struct.TYPE_39__* %166, i32* %168)
  store i32 %169, i32* %6, align 4
  br label %184

170:                                              ; preds = %30
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %172 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %173 = bitcast %struct.TYPE_38__* %172 to i32*
  %174 = call i32 @exec_stmt_set(%struct.TYPE_39__* %171, i32* %173)
  store i32 %174, i32* %6, align 4
  br label %184

175:                                              ; preds = %30
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 0
  store %struct.TYPE_38__* %176, %struct.TYPE_38__** %178, align 8
  %179 = load i32, i32* @ERROR, align 4
  %180 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @elog(i32 %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %175, %170, %165, %160, %155, %150, %145, %140, %135, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35
  %185 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @plpgsql_plugin_ptr, align 8
  %186 = load %struct.TYPE_40__*, %struct.TYPE_40__** %185, align 8
  %187 = icmp ne %struct.TYPE_40__* %186, null
  br i1 %187, label %188, label %202

188:                                              ; preds = %184
  %189 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @plpgsql_plugin_ptr, align 8
  %190 = load %struct.TYPE_40__*, %struct.TYPE_40__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %190, i32 0, i32 0
  %192 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)** %191, align 8
  %193 = icmp ne i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %188
  %195 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @plpgsql_plugin_ptr, align 8
  %196 = load %struct.TYPE_40__*, %struct.TYPE_40__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %196, i32 0, i32 0
  %198 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*)** %197, align 8
  %199 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %200 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %201 = call i32 %198(%struct.TYPE_39__* %199, %struct.TYPE_38__* %200)
  br label %202

202:                                              ; preds = %194, %188, %184
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %204, i32 0, i32 0
  store %struct.TYPE_38__* %203, %struct.TYPE_38__** %205, align 8
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @exec_stmt_block(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_assign(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_perform(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_call(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_getdiag(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_if(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_case(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_loop(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_while(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_fori(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_fors(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_forc(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_foreach_a(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_exit(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_return(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_return_next(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_return_query(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_raise(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_assert(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_execsql(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_dynexecute(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_dynfors(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_open(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_fetch(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_close(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_commit(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_rollback(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @exec_stmt_set(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
