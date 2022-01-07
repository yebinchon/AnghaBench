; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_do_regexp_match_next.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_do_regexp_match_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_17__*, i32*, i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i64 }

@S_FALSE = common dso_local global i64 0, align 8
@REM_RESET_INDEX = common dso_local global i32 0, align 4
@REM_NO_CTX_UPDATE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32*, i32*, %struct.TYPE_15__*)* @do_regexp_match_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_regexp_match_next(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, i32 %2, i32* %3, i32* %4, %struct.TYPE_15__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %13, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @jsstr_length(i32* %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %27 = call i64 @regexp_execute(i32 %19, %struct.TYPE_14__* %20, i32* %22, i32* %23, i32 %25, %struct.TYPE_15__* %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i64 @FAILED(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i64, i64* %14, align 8
  store i64 %32, i64* %7, align 8
  br label %206

33:                                               ; preds = %6
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @S_FALSE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @REM_RESET_INDEX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = call i32 @set_last_index(%struct.TYPE_16__* %43, i32 0)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i64, i64* @S_FALSE, align 8
  store i64 %46, i64* %7, align 8
  br label %206

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @REM_NO_CTX_UPDATE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @jsstr_release(i32* %61)
  %63 = load i32*, i32** %11, align 8
  %64 = call i32* @jsstr_addref(i32* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %58, %52, %47
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @REM_NO_CTX_UPDATE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %166, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @min(i32 %76, i32 %79)
  store i32 %80, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %142, %72
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %145

85:                                               ; preds = %81
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %110

95:                                               ; preds = %85
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  br label %141

110:                                              ; preds = %85
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  store i32 %118, i32* %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  store i64 %133, i64* %140, align 8
  br label %141

141:                                              ; preds = %110, %95
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %81

145:                                              ; preds = %81
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %149)
  %151 = icmp slt i32 %146, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %145
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i64 %157
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 16
  %162 = sub i64 8, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 @memset(%struct.TYPE_17__* %158, i32 0, i32 %163)
  br label %165

165:                                              ; preds = %152, %145
  br label %166

166:                                              ; preds = %165, %67
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = ptrtoint i32* %170 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = call i32 @set_last_index(%struct.TYPE_16__* %167, i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @REM_NO_CTX_UPDATE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %204, label %182

182:                                              ; preds = %166
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32*, i32** %12, align 8
  %187 = ptrtoint i32* %185 to i64
  %188 = ptrtoint i32* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sdiv exact i64 %189, 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = sub nsw i64 %190, %194
  %196 = trunc i64 %195 to i32
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %182, %166
  %205 = load i64, i64* @S_OK, align 8
  store i64 %205, i64* %7, align 8
  br label %206

206:                                              ; preds = %204, %45, %31
  %207 = load i64, i64* %7, align 8
  ret i64 %207
}

declare dso_local i64 @regexp_execute(i32, %struct.TYPE_14__*, i32*, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @set_last_index(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32* @jsstr_addref(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_17__*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
