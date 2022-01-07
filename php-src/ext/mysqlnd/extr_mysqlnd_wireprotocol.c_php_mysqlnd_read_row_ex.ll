; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_read_row_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_read_row_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_20__*, i32*, i32*, i64, i32*, i32*)* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, i32*)*, i32* (%struct.TYPE_22__*, i32*, i64, i64)*, i32* (%struct.TYPE_22__*, i64)* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_21__ = type { i64 }

@PASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"php_mysqlnd_read_row_ex\00", align 1
@FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Empty row packet body\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@MYSQLND_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32*, i32*, i32*, %struct.TYPE_22__*, %struct.TYPE_19__*, i64*)* @php_mysqlnd_read_row_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @php_mysqlnd_read_row_ex(%struct.TYPE_20__* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_22__* %4, %struct.TYPE_19__* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %14, align 8
  store i64* %6, i64** %15, align 8
  %20 = load i64, i64* @PASS, align 8
  store i64 %20, i64* %16, align 8
  store i32* null, i32** %18, align 8
  %21 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %19, align 8
  %22 = load i64*, i64** %15, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @FAIL, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i64 @mysqlnd_read_header(%struct.TYPE_20__* %24, i32* %25, %struct.TYPE_21__* %17, i32* %26, i32* %27)
  %29 = icmp eq i64 %23, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @UNEXPECTED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i64, i64* @FAIL, align 8
  store i64 %34, i64* %16, align 8
  br label %165

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %15, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %37
  store i64 %40, i64* %38, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = load i32* (%struct.TYPE_22__*, i64)*, i32* (%struct.TYPE_22__*, i64)** %42, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %45 = load i64*, i64** %15, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %19, align 8
  %48 = add i64 %46, %47
  %49 = call i32* %43(%struct.TYPE_22__* %44, i64 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %18, align 8
  %55 = load i64, i64* @PASS, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64 (%struct.TYPE_20__*, i32*, i32*, i64, i32*, i32*)*, i64 (%struct.TYPE_20__*, i32*, i32*, i64, i32*, i32*)** %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i64 %61(%struct.TYPE_20__* %62, i32* %63, i32* %64, i64 %66, i32* %67, i32* %68)
  store i64 %69, i64* %16, align 8
  %70 = icmp ne i64 %55, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @UNEXPECTED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %35
  %75 = call i32 @DBG_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @E_WARNING, align 4
  %77 = call i32 @php_error(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %164

78:                                               ; preds = %35
  br label %79

79:                                               ; preds = %162, %78
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MYSQLND_MAX_PACKET_SIZE, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %163

84:                                               ; preds = %79
  %85 = load i64, i64* @FAIL, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i64 @mysqlnd_read_header(%struct.TYPE_20__* %86, i32* %87, %struct.TYPE_21__* %17, i32* %88, i32* %89)
  %91 = icmp eq i64 %85, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i64, i64* @FAIL, align 8
  store i64 %93, i64* %16, align 8
  br label %163

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %15, align 8
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, %96
  store i64 %99, i64* %97, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %163

104:                                              ; preds = %94
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load i32* (%struct.TYPE_22__*, i32*, i64, i64)*, i32* (%struct.TYPE_22__*, i32*, i64, i64)** %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64*, i64** %15, align 8
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %113, %115
  %117 = load i64*, i64** %15, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %19, align 8
  %120 = add i64 %118, %119
  %121 = call i32* %107(%struct.TYPE_22__* %108, i32* %111, i64 %116, i64 %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  store i32* %121, i32** %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %104
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @SET_OOM_ERROR(i32* %129)
  %131 = load i64, i64* @FAIL, align 8
  store i64 %131, i64* %16, align 8
  br label %163

132:                                              ; preds = %104
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64*, i64** %15, align 8
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sub i64 %137, %139
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  store i32* %141, i32** %18, align 8
  %142 = load i64, i64* @PASS, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i64 (%struct.TYPE_20__*, i32*, i32*, i64, i32*, i32*)*, i64 (%struct.TYPE_20__*, i32*, i32*, i64, i32*, i32*)** %147, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = call i64 %148(%struct.TYPE_20__* %149, i32* %150, i32* %151, i64 %153, i32* %154, i32* %155)
  store i64 %156, i64* %16, align 8
  %157 = icmp ne i64 %142, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %132
  %159 = call i32 @DBG_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* @E_WARNING, align 4
  %161 = call i32 @php_error(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %163

162:                                              ; preds = %132
  br label %79

163:                                              ; preds = %158, %128, %103, %92, %79
  br label %164

164:                                              ; preds = %163, %74
  br label %165

165:                                              ; preds = %164, %33
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* @FAIL, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %165
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*, i32*)** %176, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 %177(%struct.TYPE_22__* %178, i32* %181)
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  store i32* null, i32** %184, align 8
  br label %185

185:                                              ; preds = %174, %169, %165
  %186 = load i64, i64* %16, align 8
  %187 = call i32 @DBG_RETURN(i64 %186)
  %188 = load i64, i64* %8, align 8
  ret i64 %188
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @mysqlnd_read_header(%struct.TYPE_20__*, i32*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i32 @php_error(i32, i8*) #1

declare dso_local i32 @SET_OOM_ERROR(i32*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
