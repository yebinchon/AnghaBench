; ModuleID = '/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c__php_imap_add_body.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c__php_imap_add_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_11__*, i64, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@TYPEMAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@ENCMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ifsubtype\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"subtype\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ifdescription\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ifid\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"ifparameters\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@TYPEMULTIPART = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"parts\00", align 1
@TYPEMESSAGE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"rfc822\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_php_imap_add_body(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TYPEMAX, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @add_property_long(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ENCMAX, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @add_property_long(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @add_property_long(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @add_property_string(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  br label %53

50:                                               ; preds = %37
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @add_property_long(i32* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @add_property_long(i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 9
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @add_property_string(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %64)
  br label %69

66:                                               ; preds = %53
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @add_property_long(i32* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %69

69:                                               ; preds = %66, %58
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @add_property_long(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @add_property_string(i32* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 %80)
  br label %85

82:                                               ; preds = %69
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @add_property_long(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %85

85:                                               ; preds = %82, %74
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @add_property_long(i32* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %91, %85
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i32*, i32** %3, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @add_property_long(i32* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %104, %98
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %9, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %116, label %149

116:                                              ; preds = %111
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @add_property_long(i32* %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %119 = call i32 @array_init(i32* %5)
  br label %120

120:                                              ; preds = %143, %116
  %121 = call i32 @object_init(i32* %6)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @add_property_string(i32* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %126, %120
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @add_property_string(i32* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %136, %131
  %142 = call i32 @add_next_index_object(i32* %5, i32* %6)
  br label %143

143:                                              ; preds = %141
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %9, align 8
  %147 = icmp ne %struct.TYPE_10__* %146, null
  br i1 %147, label %120, label %148

148:                                              ; preds = %143
  br label %153

149:                                              ; preds = %111
  %150 = call i32 @object_init(i32* %5)
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @add_property_long(i32* %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 0)
  br label %153

153:                                              ; preds = %149, %148
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @add_assoc_object(i32* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* %5)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @TYPEMULTIPART, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %181

161:                                              ; preds = %153
  %162 = call i32 @array_init(i32* %5)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  store %struct.TYPE_9__* %165, %struct.TYPE_9__** %11, align 8
  br label %166

166:                                              ; preds = %174, %161
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %168 = icmp ne %struct.TYPE_9__* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = call i32 @object_init(i32* %6)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  call void @_php_imap_add_body(i32* %6, %struct.TYPE_11__* %172)
  %173 = call i32 @add_next_index_object(i32* %5, i32* %6)
  br label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  store %struct.TYPE_9__* %177, %struct.TYPE_9__** %11, align 8
  br label %166

178:                                              ; preds = %166
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @add_assoc_object(i32* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32* %5)
  br label %181

181:                                              ; preds = %178, %153
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @TYPEMESSAGE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %203

187:                                              ; preds = %181
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @strcasecmp(i64 %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %187
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  store %struct.TYPE_11__* %196, %struct.TYPE_11__** %4, align 8
  %197 = call i32 @array_init(i32* %5)
  %198 = call i32 @object_init(i32* %6)
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  call void @_php_imap_add_body(i32* %6, %struct.TYPE_11__* %199)
  %200 = call i32 @add_next_index_object(i32* %5, i32* %6)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @add_assoc_object(i32* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32* %5)
  br label %203

203:                                              ; preds = %193, %187, %181
  ret void
}

declare dso_local i32 @add_property_long(i32*, i8*, i32) #1

declare dso_local i32 @add_property_string(i32*, i8*, i64) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @object_init(i32*) #1

declare dso_local i32 @add_next_index_object(i32*, i32*) #1

declare dso_local i32 @add_assoc_object(i32*, i8*, i32*) #1

declare dso_local i32 @strcasecmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
