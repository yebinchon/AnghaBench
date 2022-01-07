; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_appendStringInfoRegexpSubstr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_appendStringInfoRegexpSubstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_3__*, i8*, i32)* @appendStringInfoRegexpSubstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @appendStringInfoRegexpSubstr(i32 %0, i32* %1, %struct.TYPE_3__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i8* @VARDATA_ANY(i32* %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @VARSIZE_ANY_EXHDR(i32* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %12, align 8
  %27 = call i32 (...) @pg_database_encoding_max_length()
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %186, %152, %147, %5
  %29 = load i8*, i8** %11, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 92
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ false, %33 ], [ %41, %37 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %11, align 8
  br label %33

48:                                               ; preds = %42
  br label %69

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 92
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i1 [ false, %50 ], [ %58, %54 ]
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @pg_mblen(i8* %63)
  %65 = load i8*, i8** %11, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %11, align 8
  br label %50

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ugt i8* %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @appendBinaryStringInfo(i32 %74, i8* %75, i32 %81)
  br label %83

83:                                               ; preds = %73, %69
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = icmp uge i8* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %187

88:                                               ; preds = %83
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = icmp uge i8* %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @appendStringInfoChar(i32 %95, i8 signext 92)
  br label %187

97:                                               ; preds = %88
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sge i32 %100, 49
  br i1 %101, label %102, label %126

102:                                              ; preds = %97
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sle i32 %105, 57
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = sub nsw i32 %110, 48
  store i32 %111, i32* %17, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %15, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %16, align 4
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %11, align 8
  br label %156

126:                                              ; preds = %102, %97
  %127 = load i8*, i8** %11, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 38
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %16, align 4
  %140 = load i8*, i8** %11, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %11, align 8
  br label %155

142:                                              ; preds = %126
  %143 = load i8*, i8** %11, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 92
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @appendStringInfoChar(i32 %148, i8 signext 92)
  %150 = load i8*, i8** %11, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %11, align 8
  br label %28

152:                                              ; preds = %142
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @appendStringInfoChar(i32 %153, i8 signext 92)
  br label %28

155:                                              ; preds = %131
  br label %156

156:                                              ; preds = %155, %107
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, -1
  br i1 %158, label %159, label %186

159:                                              ; preds = %156
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %162, label %186

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp sge i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @Assert(i32 %166)
  %168 = load i8*, i8** %9, align 8
  store i8* %168, i8** %18, align 8
  %169 = load i8*, i8** %18, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %10, align 4
  %172 = sub nsw i32 %170, %171
  %173 = call i32 @charlen_to_bytelen(i8* %169, i32 %172)
  %174 = load i8*, i8** %18, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %18, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %15, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i32 @charlen_to_bytelen(i8* %177, i32 %180)
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i8*, i8** %18, align 8
  %184 = load i32, i32* %19, align 4
  %185 = call i32 @appendBinaryStringInfo(i32 %182, i8* %183, i32 %184)
  br label %186

186:                                              ; preds = %162, %159, %156
  br label %28

187:                                              ; preds = %94, %87
  ret void
}

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @appendBinaryStringInfo(i32, i8*, i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @charlen_to_bytelen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
