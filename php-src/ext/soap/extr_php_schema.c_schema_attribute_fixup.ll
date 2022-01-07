; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_attribute_fixup.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_attribute_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32*, i32, i32 }

@XSD_FORM_DEFAULT = common dso_local global i32 0, align 4
@XSD_USE_DEFAULT = common dso_local global i32 0, align 4
@delete_extra_attribute = common dso_local global i32 0, align 4
@copy_extra_attribute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @schema_attribute_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schema_attribute_fixup(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %192

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %154

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @schema_find_by_ref(i32* %19, i8* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %153

27:                                               ; preds = %16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  call void @schema_attribute_fixup(%struct.TYPE_5__* %28, %struct.TYPE_6__* %29)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @estrdup(i8* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %34, %27
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @estrdup(i8* %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %56, %51, %46
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @estrdup(i8* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %73, %68, %63
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @estrdup(i8* %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %85, %80
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @XSD_FORM_DEFAULT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @XSD_USE_DEFAULT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %115, %109
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %147

126:                                              ; preds = %121
  %127 = call i32* @emalloc(i32 4)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @zend_hash_num_elements(i32* %135)
  %137 = load i32, i32* @delete_extra_attribute, align 4
  %138 = call i32 @zend_hash_init(i32* %132, i32 %136, i32* null, i32 %137, i32 0)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @copy_extra_attribute, align 4
  %146 = call i32 @zend_hash_copy(i32* %141, i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %126, %121
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %147, %16
  br label %154

154:                                              ; preds = %153, %11
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %185

159:                                              ; preds = %154
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %185

164:                                              ; preds = %159
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @strrchr(i8* %167, i8 signext 58)
  store i8* %168, i8** %6, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i8* @estrdup(i8* %173)
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  br label %184

177:                                              ; preds = %164
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @estrdup(i8* %180)
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %177, %171
  br label %185

185:                                              ; preds = %184, %159, %154
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @efree(i8* %188)
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  store i8* null, i8** %191, align 8
  br label %192

192:                                              ; preds = %185, %2
  ret void
}

declare dso_local i64 @schema_find_by_ref(i32*, i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32* @emalloc(i32) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @zend_hash_num_elements(i32*) #1

declare dso_local i32 @zend_hash_copy(i32*, i32*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
